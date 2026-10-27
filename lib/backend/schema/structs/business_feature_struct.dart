// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart' hide Type;

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessFeatureStruct extends FFFirebaseStruct {
  BusinessFeatureStruct({
    BusinessPropertiesStruct? properties,
    int? id,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _properties = properties,
        _id = id,
        _type = type,
        super(firestoreUtilData);

  // "properties" field.
  BusinessPropertiesStruct? _properties;
  BusinessPropertiesStruct get properties =>
      _properties ?? BusinessPropertiesStruct();
  set properties(BusinessPropertiesStruct? val) => _properties = val;

  void updateProperties(Function(BusinessPropertiesStruct) updateFn) {
    updateFn(_properties ??= BusinessPropertiesStruct());
  }

  bool hasProperties() => _properties != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static BusinessFeatureStruct fromMap(Map<String, dynamic> data) =>
      BusinessFeatureStruct(
        properties: data['properties'] is BusinessPropertiesStruct
            ? data['properties']
            : BusinessPropertiesStruct.maybeFromMap(data['properties']),
        id: castToType<int>(data['id']),
        type: data['type'] as String?,
      );

  static BusinessFeatureStruct? maybeFromMap(dynamic data) => data is Map
      ? BusinessFeatureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'properties': _properties?.toMap(),
        'id': _id,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'properties': serializeParam(
          _properties,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static BusinessFeatureStruct fromSerializableMap(Map<String, dynamic> data) =>
      BusinessFeatureStruct(
        properties: deserializeStructParam(
          data['properties'],
          ParamType.DataStruct,
          false,
          structBuilder: BusinessPropertiesStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BusinessFeatureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusinessFeatureStruct &&
        properties == other.properties &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([properties, id, type]);
}

BusinessFeatureStruct createBusinessFeatureStruct({
  BusinessPropertiesStruct? properties,
  int? id,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BusinessFeatureStruct(
      properties:
          properties ?? (clearUnsetFields ? BusinessPropertiesStruct() : null),
      id: id,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BusinessFeatureStruct? updateBusinessFeatureStruct(
  BusinessFeatureStruct? businessFeature, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    businessFeature
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBusinessFeatureStructData(
  Map<String, dynamic> firestoreData,
  BusinessFeatureStruct? businessFeature,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (businessFeature == null) {
    return;
  }
  if (businessFeature.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && businessFeature.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final businessFeatureData =
      getBusinessFeatureFirestoreData(businessFeature, forFieldValue);
  final nestedData =
      businessFeatureData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = businessFeature.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBusinessFeatureFirestoreData(
  BusinessFeatureStruct? businessFeature, [
  bool forFieldValue = false,
]) {
  if (businessFeature == null) {
    return {};
  }
  final firestoreData = mapToFirestore(businessFeature.toMap());

  // Handle nested data for "properties" field.
  addBusinessPropertiesStructData(
    firestoreData,
    businessFeature.hasProperties() ? businessFeature.properties : null,
    'properties',
    forFieldValue,
  );

  // Add any Firestore field values
  mapToFirestore(businessFeature.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBusinessFeatureListFirestoreData(
  List<BusinessFeatureStruct>? businessFeatures,
) =>
    businessFeatures
        ?.map((e) => getBusinessFeatureFirestoreData(e, true))
        .toList() ??
    [];
