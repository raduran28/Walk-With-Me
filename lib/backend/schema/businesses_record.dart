import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessesRecord extends FirestoreRecord {
  BusinessesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "BusinessName" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  bool hasBusinessName() => _businessName != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "TunnelLevel" field.
  String? _tunnelLevel;
  String get tunnelLevel => _tunnelLevel ?? '';
  bool hasTunnelLevel() => _tunnelLevel != null;

  // "Latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  bool hasLatitude() => _latitude != null;

  // "Longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  bool hasLongitude() => _longitude != null;

  void _initializeFields() {
    _businessName = snapshotData['BusinessName'] as String?;
    _address = snapshotData['Address'] as String?;
    _type = snapshotData['Type'] as String?;
    _tunnelLevel = snapshotData['TunnelLevel'] as String?;
    _latitude = castToType<double>(snapshotData['Latitude']);
    _longitude = castToType<double>(snapshotData['Longitude']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Businesses');

  static Stream<BusinessesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessesRecord.fromSnapshot(s));

  static Future<BusinessesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessesRecord.fromSnapshot(s));

  static BusinessesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessesRecordData({
  String? businessName,
  String? address,
  String? type,
  String? tunnelLevel,
  double? latitude,
  double? longitude,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BusinessName': businessName,
      'Address': address,
      'Type': type,
      'TunnelLevel': tunnelLevel,
      'Latitude': latitude,
      'Longitude': longitude,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessesRecordDocumentEquality implements Equality<BusinessesRecord> {
  const BusinessesRecordDocumentEquality();

  @override
  bool equals(BusinessesRecord? e1, BusinessesRecord? e2) {
    return e1?.businessName == e2?.businessName &&
        e1?.address == e2?.address &&
        e1?.type == e2?.type &&
        e1?.tunnelLevel == e2?.tunnelLevel &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude;
  }

  @override
  int hash(BusinessesRecord? e) => const ListEquality().hash([
        e?.businessName,
        e?.address,
        e?.type,
        e?.tunnelLevel,
        e?.latitude,
        e?.longitude
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessesRecord;
}
