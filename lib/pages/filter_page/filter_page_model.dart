import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filter_page_widget.dart' show FilterPageWidget;
import 'package:flutter/material.dart';

class FilterPageModel extends FlutterFlowModel<FilterPageWidget> {
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

  VolunteerWorkListRecord? filteredValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
