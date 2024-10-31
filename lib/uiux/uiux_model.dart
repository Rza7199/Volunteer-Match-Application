import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'uiux_widget.dart' show UiuxWidget;
import 'package:flutter/material.dart';

class UiuxModel extends FlutterFlowModel<UiuxWidget> {
  ///  Local state fields for this page.

  List<FilterTypeStruct> filterField = [];
  void addToFilterField(FilterTypeStruct item) => filterField.add(item);
  void removeFromFilterField(FilterTypeStruct item) => filterField.remove(item);
  void removeAtIndexFromFilterField(int index) => filterField.removeAt(index);
  void insertAtIndexInFilterField(int index, FilterTypeStruct item) =>
      filterField.insert(index, item);
  void updateFilterFieldAtIndex(
          int index, Function(FilterTypeStruct) updateFn) =>
      filterField[index] = updateFn(filterField[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
