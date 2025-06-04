import 'package:flutter/material.dart';

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

  String _chatResponse = '';
  String get chatResponse => _chatResponse;
  set chatResponse(String value) {
    _chatResponse = value;
  }

  String _Qn = '';
  String get Qn => _Qn;
  set Qn(String value) {
    _Qn = value;
  }
}
