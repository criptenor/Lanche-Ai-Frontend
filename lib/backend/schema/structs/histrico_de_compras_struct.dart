// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistricoDeComprasStruct extends FFFirebaseStruct {
  HistricoDeComprasStruct({
    int? idCompraSp,
    DateTime? dateTimeNow,
    int? idProduto,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idCompraSp = idCompraSp,
        _dateTimeNow = dateTimeNow,
        _idProduto = idProduto,
        super(firestoreUtilData);

  // "id_compra_sp" field.
  int? _idCompraSp;
  int get idCompraSp => _idCompraSp ?? 0;
  set idCompraSp(int? val) => _idCompraSp = val;
  void incrementIdCompraSp(int amount) => _idCompraSp = idCompraSp + amount;
  bool hasIdCompraSp() => _idCompraSp != null;

  // "dateTimeNow" field.
  DateTime? _dateTimeNow;
  DateTime? get dateTimeNow => _dateTimeNow;
  set dateTimeNow(DateTime? val) => _dateTimeNow = val;
  bool hasDateTimeNow() => _dateTimeNow != null;

  // "id_produto" field.
  int? _idProduto;
  int get idProduto => _idProduto ?? 0;
  set idProduto(int? val) => _idProduto = val;
  void incrementIdProduto(int amount) => _idProduto = idProduto + amount;
  bool hasIdProduto() => _idProduto != null;

  static HistricoDeComprasStruct fromMap(Map<String, dynamic> data) =>
      HistricoDeComprasStruct(
        idCompraSp: castToType<int>(data['id_compra_sp']),
        dateTimeNow: data['dateTimeNow'] as DateTime?,
        idProduto: castToType<int>(data['id_produto']),
      );

  static HistricoDeComprasStruct? maybeFromMap(dynamic data) => data is Map
      ? HistricoDeComprasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_compra_sp': _idCompraSp,
        'dateTimeNow': _dateTimeNow,
        'id_produto': _idProduto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_compra_sp': serializeParam(
          _idCompraSp,
          ParamType.int,
        ),
        'dateTimeNow': serializeParam(
          _dateTimeNow,
          ParamType.DateTime,
        ),
        'id_produto': serializeParam(
          _idProduto,
          ParamType.int,
        ),
      }.withoutNulls;

  static HistricoDeComprasStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistricoDeComprasStruct(
        idCompraSp: deserializeParam(
          data['id_compra_sp'],
          ParamType.int,
          false,
        ),
        dateTimeNow: deserializeParam(
          data['dateTimeNow'],
          ParamType.DateTime,
          false,
        ),
        idProduto: deserializeParam(
          data['id_produto'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HistricoDeComprasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistricoDeComprasStruct &&
        idCompraSp == other.idCompraSp &&
        dateTimeNow == other.dateTimeNow &&
        idProduto == other.idProduto;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idCompraSp, dateTimeNow, idProduto]);
}

HistricoDeComprasStruct createHistricoDeComprasStruct({
  int? idCompraSp,
  DateTime? dateTimeNow,
  int? idProduto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HistricoDeComprasStruct(
      idCompraSp: idCompraSp,
      dateTimeNow: dateTimeNow,
      idProduto: idProduto,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HistricoDeComprasStruct? updateHistricoDeComprasStruct(
  HistricoDeComprasStruct? histricoDeCompras, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    histricoDeCompras
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHistricoDeComprasStructData(
  Map<String, dynamic> firestoreData,
  HistricoDeComprasStruct? histricoDeCompras,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (histricoDeCompras == null) {
    return;
  }
  if (histricoDeCompras.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && histricoDeCompras.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final histricoDeComprasData =
      getHistricoDeComprasFirestoreData(histricoDeCompras, forFieldValue);
  final nestedData =
      histricoDeComprasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = histricoDeCompras.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHistricoDeComprasFirestoreData(
  HistricoDeComprasStruct? histricoDeCompras, [
  bool forFieldValue = false,
]) {
  if (histricoDeCompras == null) {
    return {};
  }
  final firestoreData = mapToFirestore(histricoDeCompras.toMap());

  // Add any Firestore field values
  histricoDeCompras.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHistricoDeComprasListFirestoreData(
  List<HistricoDeComprasStruct>? histricoDeComprass,
) =>
    histricoDeComprass
        ?.map((e) => getHistricoDeComprasFirestoreData(e, true))
        .toList() ??
    [];
