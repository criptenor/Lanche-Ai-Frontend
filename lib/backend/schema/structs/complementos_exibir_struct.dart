// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplementosExibirStruct extends FFFirebaseStruct {
  ComplementosExibirStruct({
    double? valor,
    int? quantidade,
    String? nomeComplemento,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _valor = valor,
        _quantidade = quantidade,
        _nomeComplemento = nomeComplemento,
        super(firestoreUtilData);

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

  // "nome_complemento" field.
  String? _nomeComplemento;
  String get nomeComplemento => _nomeComplemento ?? '';
  set nomeComplemento(String? val) => _nomeComplemento = val;
  bool hasNomeComplemento() => _nomeComplemento != null;

  static ComplementosExibirStruct fromMap(Map<String, dynamic> data) =>
      ComplementosExibirStruct(
        valor: castToType<double>(data['valor']),
        quantidade: castToType<int>(data['quantidade']),
        nomeComplemento: data['nome_complemento'] as String?,
      );

  static ComplementosExibirStruct? maybeFromMap(dynamic data) => data is Map
      ? ComplementosExibirStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'valor': _valor,
        'quantidade': _quantidade,
        'nome_complemento': _nomeComplemento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'nome_complemento': serializeParam(
          _nomeComplemento,
          ParamType.String,
        ),
      }.withoutNulls;

  static ComplementosExibirStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ComplementosExibirStruct(
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
        nomeComplemento: deserializeParam(
          data['nome_complemento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ComplementosExibirStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComplementosExibirStruct &&
        valor == other.valor &&
        quantidade == other.quantidade &&
        nomeComplemento == other.nomeComplemento;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([valor, quantidade, nomeComplemento]);
}

ComplementosExibirStruct createComplementosExibirStruct({
  double? valor,
  int? quantidade,
  String? nomeComplemento,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ComplementosExibirStruct(
      valor: valor,
      quantidade: quantidade,
      nomeComplemento: nomeComplemento,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ComplementosExibirStruct? updateComplementosExibirStruct(
  ComplementosExibirStruct? complementosExibir, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    complementosExibir
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addComplementosExibirStructData(
  Map<String, dynamic> firestoreData,
  ComplementosExibirStruct? complementosExibir,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (complementosExibir == null) {
    return;
  }
  if (complementosExibir.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && complementosExibir.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final complementosExibirData =
      getComplementosExibirFirestoreData(complementosExibir, forFieldValue);
  final nestedData =
      complementosExibirData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      complementosExibir.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getComplementosExibirFirestoreData(
  ComplementosExibirStruct? complementosExibir, [
  bool forFieldValue = false,
]) {
  if (complementosExibir == null) {
    return {};
  }
  final firestoreData = mapToFirestore(complementosExibir.toMap());

  // Add any Firestore field values
  complementosExibir.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getComplementosExibirListFirestoreData(
  List<ComplementosExibirStruct>? complementosExibirs,
) =>
    complementosExibirs
        ?.map((e) => getComplementosExibirFirestoreData(e, true))
        .toList() ??
    [];
