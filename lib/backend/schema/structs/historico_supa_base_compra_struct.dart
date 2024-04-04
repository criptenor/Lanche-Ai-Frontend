// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoricoSupaBaseCompraStruct extends FFFirebaseStruct {
  HistoricoSupaBaseCompraStruct({
    int? numeroPedido,
    String? dataHora,
    String? statusPedido,
    int? quantidade,
    double? valorTotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _numeroPedido = numeroPedido,
        _dataHora = dataHora,
        _statusPedido = statusPedido,
        _quantidade = quantidade,
        _valorTotal = valorTotal,
        super(firestoreUtilData);

  // "numero_pedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  set numeroPedido(int? val) => _numeroPedido = val;
  void incrementNumeroPedido(int amount) =>
      _numeroPedido = numeroPedido + amount;
  bool hasNumeroPedido() => _numeroPedido != null;

  // "data_hora" field.
  String? _dataHora;
  String get dataHora => _dataHora ?? '';
  set dataHora(String? val) => _dataHora = val;
  bool hasDataHora() => _dataHora != null;

  // "status_pedido" field.
  String? _statusPedido;
  String get statusPedido => _statusPedido ?? '';
  set statusPedido(String? val) => _statusPedido = val;
  bool hasStatusPedido() => _statusPedido != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "valor_total" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  set valorTotal(double? val) => _valorTotal = val;
  void incrementValorTotal(double amount) => _valorTotal = valorTotal + amount;
  bool hasValorTotal() => _valorTotal != null;

  static HistoricoSupaBaseCompraStruct fromMap(Map<String, dynamic> data) =>
      HistoricoSupaBaseCompraStruct(
        numeroPedido: castToType<int>(data['numero_pedido']),
        dataHora: data['data_hora'] as String?,
        statusPedido: data['status_pedido'] as String?,
        quantidade: castToType<int>(data['quantidade']),
        valorTotal: castToType<double>(data['valor_total']),
      );

  static HistoricoSupaBaseCompraStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? HistoricoSupaBaseCompraStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'numero_pedido': _numeroPedido,
        'data_hora': _dataHora,
        'status_pedido': _statusPedido,
        'quantidade': _quantidade,
        'valor_total': _valorTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'numero_pedido': serializeParam(
          _numeroPedido,
          ParamType.int,
        ),
        'data_hora': serializeParam(
          _dataHora,
          ParamType.String,
        ),
        'status_pedido': serializeParam(
          _statusPedido,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'valor_total': serializeParam(
          _valorTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static HistoricoSupaBaseCompraStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoricoSupaBaseCompraStruct(
        numeroPedido: deserializeParam(
          data['numero_pedido'],
          ParamType.int,
          false,
        ),
        dataHora: deserializeParam(
          data['data_hora'],
          ParamType.String,
          false,
        ),
        statusPedido: deserializeParam(
          data['status_pedido'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        valorTotal: deserializeParam(
          data['valor_total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'HistoricoSupaBaseCompraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoricoSupaBaseCompraStruct &&
        numeroPedido == other.numeroPedido &&
        dataHora == other.dataHora &&
        statusPedido == other.statusPedido &&
        quantidade == other.quantidade &&
        valorTotal == other.valorTotal;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([numeroPedido, dataHora, statusPedido, quantidade, valorTotal]);
}

HistoricoSupaBaseCompraStruct createHistoricoSupaBaseCompraStruct({
  int? numeroPedido,
  String? dataHora,
  String? statusPedido,
  int? quantidade,
  double? valorTotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HistoricoSupaBaseCompraStruct(
      numeroPedido: numeroPedido,
      dataHora: dataHora,
      statusPedido: statusPedido,
      quantidade: quantidade,
      valorTotal: valorTotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HistoricoSupaBaseCompraStruct? updateHistoricoSupaBaseCompraStruct(
  HistoricoSupaBaseCompraStruct? historicoSupaBaseCompra, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    historicoSupaBaseCompra
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHistoricoSupaBaseCompraStructData(
  Map<String, dynamic> firestoreData,
  HistoricoSupaBaseCompraStruct? historicoSupaBaseCompra,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (historicoSupaBaseCompra == null) {
    return;
  }
  if (historicoSupaBaseCompra.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      historicoSupaBaseCompra.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final historicoSupaBaseCompraData = getHistoricoSupaBaseCompraFirestoreData(
      historicoSupaBaseCompra, forFieldValue);
  final nestedData =
      historicoSupaBaseCompraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      historicoSupaBaseCompra.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHistoricoSupaBaseCompraFirestoreData(
  HistoricoSupaBaseCompraStruct? historicoSupaBaseCompra, [
  bool forFieldValue = false,
]) {
  if (historicoSupaBaseCompra == null) {
    return {};
  }
  final firestoreData = mapToFirestore(historicoSupaBaseCompra.toMap());

  // Add any Firestore field values
  historicoSupaBaseCompra.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHistoricoSupaBaseCompraListFirestoreData(
  List<HistoricoSupaBaseCompraStruct>? historicoSupaBaseCompras,
) =>
    historicoSupaBaseCompras
        ?.map((e) => getHistoricoSupaBaseCompraFirestoreData(e, true))
        .toList() ??
    [];
