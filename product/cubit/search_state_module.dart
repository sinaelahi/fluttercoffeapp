// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sahand/coffeapp/fluttercoffeapp/feature/CafeSection/model/cafe_model.dart' show CafeModel;

abstract class SearchEvent {
  const SearchEvent();
}
class SearchQueryChanged extends SearchEvent {
  final String query;

  SearchQueryChanged(this.query);
}


abstract class SearchState {
  const SearchState();
}

class SearchInitial extends SearchState {
  const SearchInitial();
}

class SearchLoading extends SearchState {
  const SearchLoading();
}

class SearchSuccess extends SearchState {
  final List<CafeModel> items;
  final String query;
  
  const SearchSuccess({
    required this.items,
    required this.query,
  });
}

class SearchError extends SearchState {
  final String message;
  
  const SearchError(this.message);
}
