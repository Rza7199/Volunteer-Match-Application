import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizationProfileRecord extends FirestoreRecord {
  OrganizationProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "org_name" field.
  String? _orgName;
  String get orgName => _orgName ?? '';
  bool hasOrgName() => _orgName != null;

  // "org_email" field.
  String? _orgEmail;
  String get orgEmail => _orgEmail ?? '';
  bool hasOrgEmail() => _orgEmail != null;

  // "org_state" field.
  String? _orgState;
  String get orgState => _orgState ?? '';
  bool hasOrgState() => _orgState != null;

  // "org_number" field.
  int? _orgNumber;
  int get orgNumber => _orgNumber ?? 0;
  bool hasOrgNumber() => _orgNumber != null;

  // "org_website" field.
  String? _orgWebsite;
  String get orgWebsite => _orgWebsite ?? '';
  bool hasOrgWebsite() => _orgWebsite != null;

  void _initializeFields() {
    _orgName = snapshotData['org_name'] as String?;
    _orgEmail = snapshotData['org_email'] as String?;
    _orgState = snapshotData['org_state'] as String?;
    _orgNumber = castToType<int>(snapshotData['org_number']);
    _orgWebsite = snapshotData['org_website'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('organization_profile');

  static Stream<OrganizationProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizationProfileRecord.fromSnapshot(s));

  static Future<OrganizationProfileRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => OrganizationProfileRecord.fromSnapshot(s));

  static OrganizationProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizationProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizationProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizationProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizationProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizationProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizationProfileRecordData({
  String? orgName,
  String? orgEmail,
  String? orgState,
  int? orgNumber,
  String? orgWebsite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'org_name': orgName,
      'org_email': orgEmail,
      'org_state': orgState,
      'org_number': orgNumber,
      'org_website': orgWebsite,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizationProfileRecordDocumentEquality
    implements Equality<OrganizationProfileRecord> {
  const OrganizationProfileRecordDocumentEquality();

  @override
  bool equals(OrganizationProfileRecord? e1, OrganizationProfileRecord? e2) {
    return e1?.orgName == e2?.orgName &&
        e1?.orgEmail == e2?.orgEmail &&
        e1?.orgState == e2?.orgState &&
        e1?.orgNumber == e2?.orgNumber &&
        e1?.orgWebsite == e2?.orgWebsite;
  }

  @override
  int hash(OrganizationProfileRecord? e) => const ListEquality().hash(
      [e?.orgName, e?.orgEmail, e?.orgState, e?.orgNumber, e?.orgWebsite]);

  @override
  bool isValidKey(Object? o) => o is OrganizationProfileRecord;
}
