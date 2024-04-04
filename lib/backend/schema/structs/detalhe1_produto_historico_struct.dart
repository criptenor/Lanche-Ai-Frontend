// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Detalhe1ProdutoHistoricoStruct extends FFFirebaseStruct {
  Detalhe1ProdutoHistoricoStruct({
    int? quantidade,
    String? nomeProduto,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantidade = quantidade,
        _nomeProduto = nomeProduto,
        super(firestoreUtilData);

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "nome_produto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  set nomeProduto(String? val) => _nomeProduto = val;
  bool hasNomeProduto() => _nomeProduto != null;

  static Detalhe1ProdutoHistoricoStruct fromMap(Map<String, dynamic> data) =>
      Detalhe1ProdutoHistoricoStruct(
        quantidade: castToType<int>(data['quantidade']),
        nomeProduto: data['nome_produto'] as String?,
      );

  static Detalhe1ProdutoHistoricoStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? Detalhe1ProdutoHistoricoStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'quantidade': _quantidade,
        'nome_produto': _nomeProduto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'nome_produto': serializeParam(
          _nomeProduto,
          ParamType.String,
        ),
      }.withoutNulls;

  static Detalhe1ProdutoHistoricoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      Detalhe1ProdutoHistoricoStruct(
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        nomeProduto: deserializeParam(
          data['nome_produto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Detalhe1ProdutoHistoricoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Detalhe1ProdutoHistoricoStruct &&
        quantidade == other.quantidade &&
        nomeProduto == other.nomeProduto;
  }

  @override
  int get hashCode => const ListEquality().hash([quantidade, nomeProduto]);
}

Detalhe1ProdutoHistoricoStruct createDetalhe1ProdutoHistoricoStruct({
  int? quantidade,
  String? nomeProduto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Detalhe1ProdutoHistoricoStruct(
      quantidade: quantidade,
      nomeProduto: nomeProduto,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Detalhe1ProdutoHistoricoStruct? updateDetalhe1ProdutoHistoricoStruct(
  Detalhe1ProdutoHistoricoStruct? detalhe1ProdutoHistorico, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    detalhe1ProdutoHistorico
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDetalhe1ProdutoHistoricoStructData(
  Map<String, dynamic> firestoreData,
  Detalhe1ProdutoHistoricoStruct? detalhe1ProdutoHistorico,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (detalhe1ProdutoHistorico == null) {
    return;
  }
  if (detalhe1ProdutoHistorico.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      detalhe1ProdutoHistorico.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final detalhe1ProdutoHistoricoData = getDetalhe1ProdutoHistoricoFirestoreData(
      detalhe1ProdutoHistorico, forFieldValue);
  final nestedData =
      detalhe1ProdutoHistoricoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      detalhe1ProdutoHistorico.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDetalhe1ProdutoHistoricoFirestoreData(
  Detalhe1ProdutoHistoricoStruct? detalhe1ProdutoHistorico, [
  bool forFieldValue = false,
]) {
  if (detalhe1ProdutoHistorico == null) {
    return {};
  }
  final firestoreData = mapToFirestore(detalhe1ProdutoHistorico.toMap());

  // Add any Firestore field values
  detalhe1ProdutoHistorico.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDetalhe1ProdutoHistoricoListFirestoreData(
  List<Detalhe1ProdutoHistoricoStruct>? detalhe1ProdutoHistoricos,
) =>
    detalhe1ProdutoHistoricos
        ?.map((e) => getDetalhe1ProdutoHistoricoFirestoreData(e, true))
        .toList() ??
    [];
