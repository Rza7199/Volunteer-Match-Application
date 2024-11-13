import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserInfoRecord extends FirestoreRecord {
  UserInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "survey_score" field.
  int? _surveyScore;
  int get surveyScore => _surveyScore ?? 0;
  bool hasSurveyScore() => _surveyScore != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "is_profile_created" field.
  bool? _isProfileCreated;
  bool get isProfileCreated => _isProfileCreated ?? false;
  bool hasIsProfileCreated() => _isProfileCreated != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _surveyScore = castToType<int>(snapshotData['survey_score']);
    _age = castToType<int>(snapshotData['age']);
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _bio = snapshotData['bio'] as String?;
    _isProfileCreated = snapshotData['is_profile_created'] as bool?;
    _role = snapshotData['role'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_info');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserInfoRecord.fromSnapshot(s));

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserInfoRecord.fromSnapshot(s));

  static UserInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserInfoRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? surveyScore,
  int? age,
  String? city,
  String? state,
  String? bio,
  bool? isProfileCreated,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'survey_score': surveyScore,
      'age': age,
      'city': city,
      'state': state,
      'bio': bio,
      'is_profile_created': isProfileCreated,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserInfoRecordDocumentEquality implements Equality<UserInfoRecord> {
  const UserInfoRecordDocumentEquality();

  @override
  bool equals(UserInfoRecord? e1, UserInfoRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.surveyScore == e2?.surveyScore &&
        e1?.age == e2?.age &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.isProfileCreated == e2?.isProfileCreated &&
        e1?.role == e2?.role;
  }

  @override
  int hash(UserInfoRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.surveyScore,
        e?.age,
        e?.city,
        e?.state,
        e?.bio,
        e?.isProfileCreated,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is UserInfoRecord;
}
