import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountDetailsRecord extends FirestoreRecord {
  AccountDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "Expirydate" field.
  DateTime? _expirydate;
  DateTime? get expirydate => _expirydate;
  bool hasExpirydate() => _expirydate != null;

  // "CVV" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  bool hasCvv() => _cvv != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "NameOnCard" field.
  String? _nameOnCard;
  String get nameOnCard => _nameOnCard ?? '';
  bool hasNameOnCard() => _nameOnCard != null;

  void _initializeFields() {
    _cardNumber = snapshotData['CardNumber'] as int?;
    _expirydate = snapshotData['Expirydate'] as DateTime?;
    _cvv = snapshotData['CVV'] as int?;
    _country = snapshotData['Country'] as String?;
    _nameOnCard = snapshotData['NameOnCard'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AccountDetails');

  static Stream<AccountDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountDetailsRecord.fromSnapshot(s));

  static Future<AccountDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountDetailsRecord.fromSnapshot(s));

  static AccountDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountDetailsRecordData({
  int? cardNumber,
  DateTime? expirydate,
  int? cvv,
  String? country,
  String? nameOnCard,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CardNumber': cardNumber,
      'Expirydate': expirydate,
      'CVV': cvv,
      'Country': country,
      'NameOnCard': nameOnCard,
    }.withoutNulls,
  );

  return firestoreData;
}
