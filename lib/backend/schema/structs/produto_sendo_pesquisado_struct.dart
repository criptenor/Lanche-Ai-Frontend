// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoSendoPesquisadoStruct extends FFFirebaseStruct {
  ProdutoSendoPesquisadoStruct({
    String? nome,
    double? valor,
    String? descricao,
    int? id,
    String? pathFoto,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _valor = valor,
        _descricao = descricao,
        _id = id,
        _pathFoto = pathFoto,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "path_foto" field.
  String? _pathFoto;
  String get pathFoto => _pathFoto ?? '';
  set pathFoto(String? val) => _pathFoto = val;
  bool hasPathFoto() => _pathFoto != null;

  static ProdutoSendoPesquisadoStruct fromMap(Map<String, dynamic> data) =>
      ProdutoSendoPesquisadoStruct(
        nome: data['nome'] as String?,
        valor: castToType<double>(data['valor']),
        descricao: data['descricao'] as String?,
        id: castToType<int>(data['id']),
        pathFoto: data['path_foto'] as String?,
      );

  static ProdutoSendoPesquisadoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdutoSendoPesquisadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'valor': _valor,
        'descricao': _descricao,
        'id': _id,
        'path_foto': _pathFoto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'path_foto': serializeParam(
          _pathFoto,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProdutoSendoPesquisadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProdutoSendoPesquisadoStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        pathFoto: deserializeParam(
          data['path_foto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProdutoSendoPesquisadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoSendoPesquisadoStruct &&
        nome == other.nome &&
        valor == other.valor &&
        descricao == other.descricao &&
        id == other.id &&
        pathFoto == other.pathFoto;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, valor, descricao, id, pathFoto]);
}

ProdutoSendoPesquisadoStruct createProdutoSendoPesquisadoStruct({
  String? nome,
  double? valor,
  String? descricao,
  int? id,
  String? pathFoto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutoSendoPesquisadoStruct(
      nome: nome,
      valor: valor,
      descricao: descricao,
      id: id,
      pathFoto: pathFoto,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutoSendoPesquisadoStruct? updateProdutoSendoPesquisadoStruct(
  ProdutoSendoPesquisadoStruct? produtoSendoPesquisado, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtoSendoPesquisado
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutoSendoPesquisadoStructData(
  Map<String, dynamic> firestoreData,
  ProdutoSendoPesquisadoStruct? produtoSendoPesquisado,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtoSendoPesquisado == null) {
    return;
  }
  if (produtoSendoPesquisado.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      produtoSendoPesquisado.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtoSendoPesquisadoData = getProdutoSendoPesquisadoFirestoreData(
      produtoSendoPesquisado, forFieldValue);
  final nestedData =
      produtoSendoPesquisadoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      produtoSendoPesquisado.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutoSendoPesquisadoFirestoreData(
  ProdutoSendoPesquisadoStruct? produtoSendoPesquisado, [
  bool forFieldValue = false,
]) {
  if (produtoSendoPesquisado == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtoSendoPesquisado.toMap());

  // Add any Firestore field values
  produtoSendoPesquisado.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutoSendoPesquisadoListFirestoreData(
  List<ProdutoSendoPesquisadoStruct>? produtoSendoPesquisados,
) =>
    produtoSendoPesquisados
        ?.map((e) => getProdutoSendoPesquisadoFirestoreData(e, true))
        .toList() ??
    [];
