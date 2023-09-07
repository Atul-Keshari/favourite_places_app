import 'dart:io';

import 'package:favouriteplaces/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);
  void addPlaces(String title,File image) {
    final newPlace = Place(title: title,image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier,List<Place>>((ref) => UserPlacesNotifier(),);
