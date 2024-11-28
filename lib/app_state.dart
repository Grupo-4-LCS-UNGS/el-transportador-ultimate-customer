import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<LatLng> _ultimaPosicionMax = [];
  List<LatLng> get ultimaPosicionMax => _ultimaPosicionMax;
  set ultimaPosicionMax(List<LatLng> value) {
    _ultimaPosicionMax = value;
  }

  void addToUltimaPosicionMax(LatLng value) {
    ultimaPosicionMax.add(value);
  }

  void removeFromUltimaPosicionMax(LatLng value) {
    ultimaPosicionMax.remove(value);
  }

  void removeAtIndexFromUltimaPosicionMax(int index) {
    ultimaPosicionMax.removeAt(index);
  }

  void updateUltimaPosicionMaxAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    ultimaPosicionMax[index] = updateFn(_ultimaPosicionMax[index]);
  }

  void insertAtIndexInUltimaPosicionMax(int index, LatLng value) {
    ultimaPosicionMax.insert(index, value);
  }
}
