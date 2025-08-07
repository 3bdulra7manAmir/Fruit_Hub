import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'favourite_controller.g.dart';

@riverpod
class FavouriteImg extends _$FavouriteImg {
  @override
  bool build()
  {
    const initialValue = false;
    log('Initial Favourit State: $initialValue');
    return initialValue;
  }

  void toggle()
  {
    state = !state;
    log('Favourit Toggled => $state');
  }
}
