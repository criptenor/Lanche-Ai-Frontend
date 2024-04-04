// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaProdutoUniqueStruct extends FFFirebaseStruct {
  CategoriaProdutoUniqueStruct({
    int? idHashProduto,
    double? valorComplemento,
    int? idProduto,
    int? idComplemento,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idHashProduto = idHashProduto,
        _valorComplemento = valorComplemento,
        _idProduto = idProduto,
        _idComplemento = idComplemento,
        super(firestoreUtilData);

  // "id_hash_produto" field.
  int? _idHashProduto;
  int get idHashProduto => _idHashProduto ?? 0;
  set idHashProduto(int? val) => _idHashProduto = val;
  void incrementIdHashProduto(int amount) =>
      _idHashProduto = idHashProduto + amount;
  bool hasIdHashProduto() => _idHashProduto != null;

  // "valorComplemento" field.
  double? _valorComplemento;
  double get valorComplemento => _valorComplemento ?? 0.0;
  set valorComplemento(double? val) => _valorComplemento = val;
  void incrementValorComplemento(double amount) =>
      _valorComplemento = valorComplemento + amount;
  bool hasValorComplemento() => _valorComplemento != null;

  // "id_produto" field.
  int? _idProduto;
  int get idProduto => _idProduto ?? 0;
  set idProduto(int? val) => _idProduto = val;
  void incrementIdProduto(int amount) => _idProduto = idProduto + amount;
  bool hasIdProduto() => _idProduto != null;

  // "id_complemento" field.
  int? _idComplemento;
  int get idComplemento => _idComplemento ?? 0;
  set idComplemento(int? val) => _idComplemento = val;
  void incrementIdComplemento(int amount) =>
      _idComplemento = idComplemento + amount;
  bool hasIdComplemento() => _idComplemento != null;

  static CategoriaProdutoUniqueStruct fromMap(Map<String, dynamic> data) =>
      CategoriaProdutoUniqueStruct(
        idHashProduto: castToType<int>(data['id_hash_produto']),
        valorComplemento: castToType<double>(data['valorComplemento']),
        idProduto: castToType<int>(data['id_produto']),
        idComplemento: castToType<int>(data['id_complemento']),
      );

  static CategoriaProdutoUniqueStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriaProdutoUniqueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_hash_produto': _idHashProduto,
        'valorComplemento': _valorComplemento,
        'id_produto': _idProduto,
        'id_complemento': _idComplemento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_hash_produto': serializeParam(
          _idHashProduto,
          ParamType.int,
        ),
        'valorComplemento': serializeParam(
          _valorComplemento,
          ParamType.double,
        ),
        'id_produto': serializeParam(
          _idProduto,
          ParamType.int,
        ),
        'id_complemento': serializeParam(
          _idComplemento,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoriaProdutoUniqueStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CategoriaProdutoUniqueStruct(
        idHashProduto: deserializeParam(
          data['id_hash_produto'],
          ParamType.int,
          false,
        ),
        valorComplemento: deserializeParam(
          data['valorComplemento'],
          ParamType.double,
          false,
        ),
        idProduto: deserializeParam(
          data['id_produto'],
          ParamType.int,
          false,
        ),
        idComplemento: deserializeParam(
          data['id_complemento'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoriaProdutoUniqueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriaProdutoUniqueStruct &&
        idHashProduto == other.idHashProduto &&
        valorComplemento == other.valorComplemento &&
        idProduto == other.idProduto &&
        idComplemento == other.idComplemento;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idHashProduto, valorComplemento, idProduto, idComplemento]);
}

CategoriaProdutoUniqueStruct createCategoriaProdutoUniqueStruct({
  int? idHashProduto,
  double? valorComplemento,
  int? idProduto,
  int? idComplemento,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoriaProdutoUniqueStruct(
      idHashProduto: idHashProduto,
      valorComplemento: valorComplemento,
      idProduto: idProduto,
      idComplemento: idComplemento,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoriaProdutoUniqueStruct? updateCategoriaProdutoUniqueStruct(
  CategoriaProdutoUniqueStruct? categoriaProdutoUnique, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categoriaProdutoUnique
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoriaProdutoUniqueStructData(
  Map<String, dynamic> firestoreData,
  CategoriaProdutoUniqueStruct? categoriaProdutoUnique,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoriaProdutoUnique == null) {
    return;
  }
  if (categoriaProdutoUnique.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      categoriaProdutoUnique.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoriaProdutoUniqueData = getCategoriaProdutoUniqueFirestoreData(
      categoriaProdutoUnique, forFieldValue);
  final nestedData =
      categoriaProdutoUniqueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      categoriaProdutoUnique.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoriaProdutoUniqueFirestoreData(
  CategoriaProdutoUniqueStruct? categoriaProdutoUnique, [
  bool forFieldValue = false,
]) {
  if (categoriaProdutoUnique == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoriaProdutoUnique.toMap());

  // Add any Firestore field values
  categoriaProdutoUnique.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoriaProdutoUniqueListFirestoreData(
  List<CategoriaProdutoUniqueStruct>? categoriaProdutoUniques,
) =>
    categoriaProdutoUniques
        ?.map((e) => getCategoriaProdutoUniqueFirestoreData(e, true))
        .toList() ??
    [];
