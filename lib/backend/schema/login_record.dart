import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginRecord extends FirestoreRecord {
  LoginRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "EmailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "ChoosePassword" field.
  String? _choosePassword;
  String get choosePassword => _choosePassword ?? '';
  bool hasChoosePassword() => _choosePassword != null;

  void _initializeFields() {
    _emailAddress = snapshotData['EmailAddress'] as String?;
    _choosePassword = snapshotData['ChoosePassword'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Login');

  static Stream<LoginRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoginRecord.fromSnapshot(s));

  static Future<LoginRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoginRecord.fromSnapshot(s));

  static LoginRecord fromSnapshot(DocumentSnapshot snapshot) => LoginRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoginRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoginRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoginRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoginRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoginRecordData({
  String? emailAddress,
  String? choosePassword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'EmailAddress': emailAddress,
      'ChoosePassword': choosePassword,
    }.withoutNulls,
  );

  return firestoreData;
}
