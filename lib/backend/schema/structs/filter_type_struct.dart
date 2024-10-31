// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FilterTypeStruct extends FFFirebaseStruct {
  FilterTypeStruct({
    String? key,
    String? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _key = key,
        _value = value,
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

  static FilterTypeStruct fromMap(Map<String, dynamic> data) =>
      FilterTypeStruct(
        key: data['key'] as String?,
        value: data['value'] as String?,
      );

  static FilterTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'value': _value,
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
      }.withoutNulls;

  static FilterTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterTypeStruct(
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
      );

  @override
  String toString() => 'FilterTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterTypeStruct &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([key, value]);
}

FilterTypeStruct createFilterTypeStruct({
  String? key,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FilterTypeStruct(
      key: key,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FilterTypeStruct? updateFilterTypeStruct(
  FilterTypeStruct? filterType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    filterType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFilterTypeStructData(
  Map<String, dynamic> firestoreData,
  FilterTypeStruct? filterType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filterType == null) {
    return;
  }
  if (filterType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && filterType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filterTypeData = getFilterTypeFirestoreData(filterType, forFieldValue);
  final nestedData = filterTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = filterType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFilterTypeFirestoreData(
  FilterTypeStruct? filterType, [
  bool forFieldValue = false,
]) {
  if (filterType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(filterType.toMap());

  // Add any Firestore field values
  filterType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFilterTypeListFirestoreData(
  List<FilterTypeStruct>? filterTypes,
) =>
    filterTypes?.map((e) => getFilterTypeFirestoreData(e, true)).toList() ?? [];
