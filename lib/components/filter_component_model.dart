import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filter_component_widget.dart' show FilterComponentWidget;
import 'package:flutter/material.dart';

class FilterComponentModel extends FlutterFlowModel<FilterComponentWidget> {
  ///  Local state fields for this component.

  FilterColumnStruct? chooseCategory;
  void updateChooseCategoryStruct(Function(FilterColumnStruct) updateFn) {
    updateFn(chooseCategory ??= FilterColumnStruct());
  }

  List<FilterTypeStruct> selectFilter = [];
  void addToSelectFilter(FilterTypeStruct item) => selectFilter.add(item);
  void removeFromSelectFilter(FilterTypeStruct item) =>
      selectFilter.remove(item);
  void removeAtIndexFromSelectFilter(int index) => selectFilter.removeAt(index);
  void insertAtIndexInSelectFilter(int index, FilterTypeStruct item) =>
      selectFilter.insert(index, item);
  void updateSelectFilterAtIndex(
          int index, Function(FilterTypeStruct) updateFn) =>
      selectFilter[index] = updateFn(selectFilter[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
