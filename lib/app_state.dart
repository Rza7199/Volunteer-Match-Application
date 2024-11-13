import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _volunteerWorkFilter = prefs
              .getStringList('ff_volunteerWorkFilter')
              ?.map((x) {
                try {
                  return FilterColumnStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _volunteerWorkFilter;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _statename = '';
  String get statename => _statename;
  set statename(String value) {
    _statename = value;
  }

  String _Organization = '';
  String get Organization => _Organization;
  set Organization(String value) {
    _Organization = value;
  }

  String _Description = '';
  String get Description => _Description;
  set Description(String value) {
    _Description = value;
  }

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int value) {
    _currentIndex = value;
  }

  int _maxIndex = 2;
  int get maxIndex => _maxIndex;
  set maxIndex(int value) {
    _maxIndex = value;
  }

  List<FilterColumnStruct> _volunteerWorkFilter = [
    FilterColumnStruct.fromSerializableMap(jsonDecode(
        '{\"key\":\"Name\",\"value\":\"value\",\"options\":\"[\\\"A-G\\\",\\\"H-Z\\\"]\"}'))
  ];
  List<FilterColumnStruct> get volunteerWorkFilter => _volunteerWorkFilter;
  set volunteerWorkFilter(List<FilterColumnStruct> value) {
    _volunteerWorkFilter = value;
    prefs.setStringList(
        'ff_volunteerWorkFilter', value.map((x) => x.serialize()).toList());
  }

  void addToVolunteerWorkFilter(FilterColumnStruct value) {
    volunteerWorkFilter.add(value);
    prefs.setStringList('ff_volunteerWorkFilter',
        _volunteerWorkFilter.map((x) => x.serialize()).toList());
  }

  void removeFromVolunteerWorkFilter(FilterColumnStruct value) {
    volunteerWorkFilter.remove(value);
    prefs.setStringList('ff_volunteerWorkFilter',
        _volunteerWorkFilter.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromVolunteerWorkFilter(int index) {
    volunteerWorkFilter.removeAt(index);
    prefs.setStringList('ff_volunteerWorkFilter',
        _volunteerWorkFilter.map((x) => x.serialize()).toList());
  }

  void updateVolunteerWorkFilterAtIndex(
    int index,
    FilterColumnStruct Function(FilterColumnStruct) updateFn,
  ) {
    volunteerWorkFilter[index] = updateFn(_volunteerWorkFilter[index]);
    prefs.setStringList('ff_volunteerWorkFilter',
        _volunteerWorkFilter.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInVolunteerWorkFilter(int index, FilterColumnStruct value) {
    volunteerWorkFilter.insert(index, value);
    prefs.setStringList('ff_volunteerWorkFilter',
        _volunteerWorkFilter.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
