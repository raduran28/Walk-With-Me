// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BusinessPropertiesStruct extends FFFirebaseStruct {
  BusinessPropertiesStruct({
    String? businessName,
    String? address,
    String? hours,
    String? ref,
    int? objectid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _businessName = businessName,
        _address = address,
        _hours = hours,
        _ref = ref,
        _objectid = objectid,
        super(firestoreUtilData);

  // "business_name" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  set businessName(String? val) => _businessName = val;

  bool hasBusinessName() => _businessName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "hours" field.
  String? _hours;
  String get hours => _hours ?? '';
  set hours(String? val) => _hours = val;

  bool hasHours() => _hours != null;

  // "ref" field.
  String? _ref;
  String get ref => _ref ?? '';
  set ref(String? val) => _ref = val;

  bool hasRef() => _ref != null;

  // "objectid" field.
  int? _objectid;
  int get objectid => _objectid ?? 0;
  set objectid(int? val) => _objectid = val;

  void incrementObjectid(int amount) => objectid = objectid + amount;

  bool hasObjectid() => _objectid != null;

  static BusinessPropertiesStruct fromMap(Map<String, dynamic> data) =>
      BusinessPropertiesStruct(
        businessName: data['business_name'] as String?,
        address: data['address'] as String?,
        hours: data['hours'] as String?,
        ref: data['ref'] as String?,
        objectid: castToType<int>(data['objectid']),
      );

  static BusinessPropertiesStruct? maybeFromMap(dynamic data) => data is Map
      ? BusinessPropertiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'business_name': _businessName,
        'address': _address,
        'hours': _hours,
        'ref': _ref,
        'objectid': _objectid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'business_name': serializeParam(
          _businessName,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'hours': serializeParam(
          _hours,
          ParamType.String,
        ),
        'ref': serializeParam(
          _ref,
          ParamType.String,
        ),
        'objectid': serializeParam(
          _objectid,
          ParamType.int,
        ),
      }.withoutNulls;

  static BusinessPropertiesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BusinessPropertiesStruct(
        businessName: deserializeParam(
          data['business_name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        hours: deserializeParam(
          data['hours'],
          ParamType.String,
          false,
        ),
        ref: deserializeParam(
          data['ref'],
          ParamType.String,
          false,
        ),
        objectid: deserializeParam(
          data['objectid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BusinessPropertiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusinessPropertiesStruct &&
        businessName == other.businessName &&
        address == other.address &&
        hours == other.hours &&
        ref == other.ref &&
        objectid == other.objectid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([businessName, address, hours, ref, objectid]);
}

BusinessPropertiesStruct createBusinessPropertiesStruct({
  String? businessName,
  String? address,
  String? hours,
  String? ref,
  int? objectid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BusinessPropertiesStruct(
      businessName: businessName,
      address: address,
      hours: hours,
      ref: ref,
      objectid: objectid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BusinessPropertiesStruct? updateBusinessPropertiesStruct(
  BusinessPropertiesStruct? businessProperties, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    businessProperties
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBusinessPropertiesStructData(
  Map<String, dynamic> firestoreData,
  BusinessPropertiesStruct? businessProperties,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (businessProperties == null) {
    return;
  }
  if (businessProperties.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && businessProperties.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final businessPropertiesData =
      getBusinessPropertiesFirestoreData(businessProperties, forFieldValue);
  final nestedData =
      businessPropertiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      businessProperties.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBusinessPropertiesFirestoreData(
  BusinessPropertiesStruct? businessProperties, [
  bool forFieldValue = false,
]) {
  if (businessProperties == null) {
    return {};
  }
  final firestoreData = mapToFirestore(businessProperties.toMap());

  // Add any Firestore field values
  mapToFirestore(businessProperties.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBusinessPropertiesListFirestoreData(
  List<BusinessPropertiesStruct>? businessPropertiess,
) =>
    businessPropertiess
        ?.map((e) => getBusinessPropertiesFirestoreData(e, true))
        .toList() ??
    [];
