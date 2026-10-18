import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteFoldersRecord extends FirestoreRecord {
  FavoriteFoldersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "itemCount" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  bool hasItemCount() => _itemCount != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _itemCount = castToType<int>(snapshotData['itemCount']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('FavoriteFolders')
          : FirebaseFirestore.instance.collectionGroup('FavoriteFolders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('FavoriteFolders').doc(id);

  static Stream<FavoriteFoldersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoriteFoldersRecord.fromSnapshot(s));

  static Future<FavoriteFoldersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoriteFoldersRecord.fromSnapshot(s));

  static FavoriteFoldersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoriteFoldersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoriteFoldersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoriteFoldersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoriteFoldersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoriteFoldersRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createFavoriteFoldersRecordData({
  String? name,
  DateTime? createdAt,
  int? itemCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'createdAt': createdAt,
      'itemCount': itemCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoriteFoldersRecordDocumentEquality
    implements Equality<FavoriteFoldersRecord> {
  const FavoriteFoldersRecordDocumentEquality();

  @override
  bool equals(FavoriteFoldersRecord? e1, FavoriteFoldersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.createdAt == e2?.createdAt &&
        e1?.itemCount == e2?.itemCount;
  }

  @override
  int hash(FavoriteFoldersRecord? e) =>
      const ListEquality().hash([e?.name, e?.createdAt, e?.itemCount]);

  @override
  bool isValidKey(Object? o) => o is FavoriteFoldersRecord;
}
