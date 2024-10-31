// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterColumnStruct extends FFFirebaseStruct {
  FilterColumnStruct({
    String? key,
    String? value,
    List<String>? options,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _key = key,
        _value = value,
        _options = options,
        super(firestoreUtilData);

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  static FilterColumnStruct fromMap(Map<String, dynamic> data) =>
      FilterColumnStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
        options: getDataList(data['options']),
      );

  static FilterColumnStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterColumnStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
        'options': _options,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static FilterColumnStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterColumnStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'FilterColumnStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FilterColumnStruct &&
        key == other.key &&
        value == other.value &&
        listEquality.equals(options, other.options);
  }

  @override
  int get hashCode => const ListEquality().hash([key, value, options]);
}

FilterColumnStruct createFilterColumnStruct({
  String? key,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FilterColumnStruct(
      key: key,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FilterColumnStruct? updateFilterColumnStruct(
  FilterColumnStruct? filterColumn, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    filterColumn
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFilterColumnStructData(
  Map<String, dynamic> firestoreData,
  FilterColumnStruct? filterColumn,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filterColumn == null) {
    return;
  }
  if (filterColumn.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && filterColumn.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filterColumnData =
      getFilterColumnFirestoreData(filterColumn, forFieldValue);
  final nestedData =
      filterColumnData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = filterColumn.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFilterColumnFirestoreData(
  FilterColumnStruct? filterColumn, [
  bool forFieldValue = false,
]) {
  if (filterColumn == null) {
    return {};
  }
  final firestoreData = mapToFirestore(filterColumn.toMap());

  // Add any Firestore field values
  filterColumn.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFilterColumnListFirestoreData(
  List<FilterColumnStruct>? filterColumns,
) =>
    filterColumns?.map((e) => getFilterColumnFirestoreData(e, true)).toList() ??
    [];
