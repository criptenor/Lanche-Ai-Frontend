// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoSendoCompradoStruct extends FFFirebaseStruct {
  ProdutoSendoCompradoStruct({
    int? idHash,
    int? idProduto,
    double? valor,
    int? quantidade,
    String? observ,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idHash = idHash,
        _idProduto = idProduto,
        _valor = valor,
        _quantidade = quantidade,
        _observ = observ,
        super(firestoreUtilData);

  // "id_hash" field.
  int? _idHash;
  int get idHash => _idHash ?? 0;
  set idHash(int? val) => _idHash = val;
  void incrementIdHash(int amount) => _idHash = idHash + amount;
  bool hasIdHash() => _idHash != null;

  // "id_produto" field.
  int? _idProduto;
  int get idProduto => _idProduto ?? 0;
  set idProduto(int? val) => _idProduto = val;
  void incrementIdProduto(int amount) => _idProduto = idProduto + amount;
  bool hasIdProduto() => _idProduto != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "observ" field.
  String? _observ;
  String get observ => _observ ?? '';
  set observ(String? val) => _observ = val;
  bool hasObserv() => _observ != null;

  static ProdutoSendoCompradoStruct fromMap(Map<String, dynamic> data) =>
      ProdutoSendoCompradoStruct(
        idHash: castToType<int>(data['id_hash']),
        idProduto: castToType<int>(data['id_produto']),
        valor: castToType<double>(data['valor']),
        quantidade: castToType<int>(data['quantidade']),
        observ: data['observ'] as String?,
      );

  static ProdutoSendoCompradoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdutoSendoCompradoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_hash': _idHash,
        'id_produto': _idProduto,
        'valor': _valor,
        'quantidade': _quantidade,
        'observ': _observ,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_hash': serializeParam(
          _idHash,
          ParamType.int,
        ),
        'id_produto': serializeParam(
          _idProduto,
          ParamType.int,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'observ': serializeParam(
          _observ,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProdutoSendoCompradoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProdutoSendoCompradoStruct(
        idHash: deserializeParam(
          data['id_hash'],
          ParamType.int,
          false,
        ),
        idProduto: deserializeParam(
          data['id_produto'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        observ: deserializeParam(
          data['observ'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProdutoSendoCompradoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoSendoCompradoStruct &&
        idHash == other.idHash &&
        idProduto == other.idProduto &&
        valor == other.valor &&
        quantidade == other.quantidade &&
        observ == other.observ;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idHash, idProduto, valor, quantidade, observ]);
}

ProdutoSendoCompradoStruct createProdutoSendoCompradoStruct({
  int? idHash,
  int? idProduto,
  double? valor,
  int? quantidade,
  String? observ,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutoSendoCompradoStruct(
      idHash: idHash,
      idProduto: idProduto,
      valor: valor,
      quantidade: quantidade,
      observ: observ,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutoSendoCompradoStruct? updateProdutoSendoCompradoStruct(
  ProdutoSendoCompradoStruct? produtoSendoComprado, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtoSendoComprado
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutoSendoCompradoStructData(
  Map<String, dynamic> firestoreData,
  ProdutoSendoCompradoStruct? produtoSendoComprado,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtoSendoComprado == null) {
    return;
  }
  if (produtoSendoComprado.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtoSendoComprado.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtoSendoCompradoData =
      getProdutoSendoCompradoFirestoreData(produtoSendoComprado, forFieldValue);
  final nestedData =
      produtoSendoCompradoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      produtoSendoComprado.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutoSendoCompradoFirestoreData(
  ProdutoSendoCompradoStruct? produtoSendoComprado, [
  bool forFieldValue = false,
]) {
  if (produtoSendoComprado == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtoSendoComprado.toMap());

  // Add any Firestore field values
  produtoSendoComprado.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutoSendoCompradoListFirestoreData(
  List<ProdutoSendoCompradoStruct>? produtoSendoComprados,
) =>
    produtoSendoComprados
        ?.map((e) => getProdutoSendoCompradoFirestoreData(e, true))
        .toList() ??
    [];
