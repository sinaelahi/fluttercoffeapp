
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahand/coffeapp/fluttercoffeapp/feature/CafeSection/coffe_login.dart';
import 'package:sahand/coffeapp/fluttercoffeapp/feature/CafeSection/model/cafe_main_imagemodule.dart';
import 'package:sahand/coffeapp/fluttercoffeapp/feature/CafeSection/model/cafe_model.dart';
import 'package:sahand/coffeapp/fluttercoffeapp/product/cubit/search_state_module.dart';




class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CafeMainImagemodule cafeModule;
  
  SearchBloc({required this.cafeModule}) : super(SearchInitial()) {
    on<SearchQueryChanged>(_onSearchQueryChanged);
  }
  
  Future<void> _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<SearchState> emit,
  ) async {
    emit(SearchLoading());
    await Future.delayed(Duration(milliseconds: 300));
    try {
      final List<CafeModel> allCoffees = cafeModule.getdata();
    
      final List<CafeModel> filteredCoffees;
      
      if (event.query.isEmpty) {
        filteredCoffees = allCoffees;
      } else {
        filteredCoffees = allCoffees.where((coffee) {
          return coffee.coffename
              .toLowerCase()
              .contains(event.query.toLowerCase());
        }).toList();
      }
      emit(SearchSuccess(
        items: filteredCoffees,
        query: event.query,
      ));
      
    } catch (e) {
      emit(SearchError(e.toString()));
    }
  }
}