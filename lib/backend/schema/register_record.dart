import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegisterRecord extends FirestoreRecord {
  RegisterRecord._(
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

  // "ConfirmPassword" field.
  String? _confirmPassword;
  String get confirmPassword => _confirmPassword ?? '';
  bool hasConfirmPassword() => _confirmPassword != null;

  void _initializeFields() {
    _emailAddress = snapshotData['EmailAddress'] as String?;
    _choosePassword = snapshotData['ChoosePassword'] as String?;
    _confirmPassword = snapshotData['ConfirmPassword'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Register');

  static Stream<RegisterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegisterRecord.fromSnapshot(s));

  static Future<RegisterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegisterRecord.fromSnapshot(s));

  static RegisterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegisterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegisterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegisterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegisterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegisterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegisterRecordData({
  String? emailAddress,
  String? choosePassword,
  String? confirmPassword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'EmailAddress': emailAddress,
      'ChoosePassword': choosePassword,
      'ConfirmPassword': confirmPassword,
    }.withoutNulls,
  );

  return firestoreData;
}
