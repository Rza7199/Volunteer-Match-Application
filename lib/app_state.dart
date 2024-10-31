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

  List<FilterColumnStruct> _volunteerWorkFilter = [];
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
