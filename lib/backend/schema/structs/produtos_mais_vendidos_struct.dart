// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosMaisVendidosStruct extends FFFirebaseStruct {
  ProdutosMaisVendidosStruct({
    String? nome,
    double? valor,
    String? descricao,
    String? pathFoto,
    int? idProduto,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _valor = valor,
        _descricao = descricao,
        _pathFoto = pathFoto,
        _idProduto = idProduto,
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

  // "path_foto" field.
  String? _pathFoto;
  String get pathFoto => _pathFoto ?? '';
  set pathFoto(String? val) => _pathFoto = val;
  bool hasPathFoto() => _pathFoto != null;

  // "id_produto" field.
  int? _idProduto;
  int get idProduto => _idProduto ?? 0;
  set idProduto(int? val) => _idProduto = val;
  void incrementIdProduto(int amount) => _idProduto = idProduto + amount;
  bool hasIdProduto() => _idProduto != null;

  static ProdutosMaisVendidosStruct fromMap(Map<String, dynamic> data) =>
      ProdutosMaisVendidosStruct(
        nome: data['nome'] as String?,
        valor: castToType<double>(data['valor']),
        descricao: data['descricao'] as String?,
        pathFoto: data['path_foto'] as String?,
        idProduto: castToType<int>(data['id_produto']),
      );

  static ProdutosMaisVendidosStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdutosMaisVendidosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'valor': _valor,
        'descricao': _descricao,
        'path_foto': _pathFoto,
        'id_produto': _idProduto,
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
        'path_foto': serializeParam(
          _pathFoto,
          ParamType.String,
        ),
        'id_produto': serializeParam(
          _idProduto,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProdutosMaisVendidosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProdutosMaisVendidosStruct(
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
        pathFoto: deserializeParam(
          data['path_foto'],
          ParamType.String,
          false,
        ),
        idProduto: deserializeParam(
          data['id_produto'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosMaisVendidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosMaisVendidosStruct &&
        nome == other.nome &&
        valor == other.valor &&
        descricao == other.descricao &&
        pathFoto == other.pathFoto &&
        idProduto == other.idProduto;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, valor, descricao, pathFoto, idProduto]);
}

ProdutosMaisVendidosStruct createProdutosMaisVendidosStruct({
  String? nome,
  double? valor,
  String? descricao,
  String? pathFoto,
  int? idProduto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosMaisVendidosStruct(
      nome: nome,
      valor: valor,
      descricao: descricao,
      pathFoto: pathFoto,
      idProduto: idProduto,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosMaisVendidosStruct? updateProdutosMaisVendidosStruct(
  ProdutosMaisVendidosStruct? produtosMaisVendidos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtosMaisVendidos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosMaisVendidosStructData(
  Map<String, dynamic> firestoreData,
  ProdutosMaisVendidosStruct? produtosMaisVendidos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtosMaisVendidos == null) {
    return;
  }
  if (produtosMaisVendidos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtosMaisVendidos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosMaisVendidosData =
      getProdutosMaisVendidosFirestoreData(produtosMaisVendidos, forFieldValue);
  final nestedData =
      produtosMaisVendidosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      produtosMaisVendidos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosMaisVendidosFirestoreData(
  ProdutosMaisVendidosStruct? produtosMaisVendidos, [
  bool forFieldValue = false,
]) {
  if (produtosMaisVendidos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtosMaisVendidos.toMap());

  // Add any Firestore field values
  produtosMaisVendidos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosMaisVendidosListFirestoreData(
  List<ProdutosMaisVendidosStruct>? produtosMaisVendidoss,
) =>
    produtosMaisVendidoss
        ?.map((e) => getProdutosMaisVendidosFirestoreData(e, true))
        .toList() ??
    [];
