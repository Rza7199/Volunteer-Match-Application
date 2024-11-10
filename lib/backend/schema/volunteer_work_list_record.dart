import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolunteerWorkListRecord extends FirestoreRecord {
  VolunteerWorkListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _location = snapshotData['Location'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _imageUrl = snapshotData['Image_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('volunteer_work_list');

  static Stream<VolunteerWorkListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VolunteerWorkListRecord.fromSnapshot(s));

  static Future<VolunteerWorkListRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VolunteerWorkListRecord.fromSnapshot(s));

  static VolunteerWorkListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VolunteerWorkListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolunteerWorkListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolunteerWorkListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolunteerWorkListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolunteerWorkListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolunteerWorkListRecordData({
  String? title,
  String? description,
  String? location,
  DateTime? date,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Description': description,
      'Location': location,
      'Date': date,
      'Image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class VolunteerWorkListRecordDocumentEquality
    implements Equality<VolunteerWorkListRecord> {
  const VolunteerWorkListRecordDocumentEquality();

  @override
  bool equals(VolunteerWorkListRecord? e1, VolunteerWorkListRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.date == e2?.date &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(VolunteerWorkListRecord? e) => const ListEquality()
      .hash([e?.title, e?.description, e?.location, e?.date, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is VolunteerWorkListRecord;
}
