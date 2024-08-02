// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcompanharPedidoStruct extends FFFirebaseStruct {
  AcompanharPedidoStruct({
    bool? pedidoAceito,
    DateTime? horarioPedidoAceito,
    bool? pedidoPronto,
    DateTime? pedidoProntoHorario,
    bool? pedidoSaiuEntrega,
    DateTime? pedidoSaiuEntregaHorario,
    bool? pedidoEntregue,
    DateTime? pedidoEntregueHorario,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pedidoAceito = pedidoAceito,
        _horarioPedidoAceito = horarioPedidoAceito,
        _pedidoPronto = pedidoPronto,
        _pedidoProntoHorario = pedidoProntoHorario,
        _pedidoSaiuEntrega = pedidoSaiuEntrega,
        _pedidoSaiuEntregaHorario = pedidoSaiuEntregaHorario,
        _pedidoEntregue = pedidoEntregue,
        _pedidoEntregueHorario = pedidoEntregueHorario,
        super(firestoreUtilData);

  // "pedido_aceito" field.
  bool? _pedidoAceito;
  bool get pedidoAceito => _pedidoAceito ?? false;
  set pedidoAceito(bool? val) => _pedidoAceito = val;
  bool hasPedidoAceito() => _pedidoAceito != null;

  // "horario_pedido_aceito" field.
  DateTime? _horarioPedidoAceito;
  DateTime? get horarioPedidoAceito => _horarioPedidoAceito;
  set horarioPedidoAceito(DateTime? val) => _horarioPedidoAceito = val;
  bool hasHorarioPedidoAceito() => _horarioPedidoAceito != null;

  // "pedido_pronto" field.
  bool? _pedidoPronto;
  bool get pedidoPronto => _pedidoPronto ?? false;
  set pedidoPronto(bool? val) => _pedidoPronto = val;
  bool hasPedidoPronto() => _pedidoPronto != null;

  // "pedido_pronto_horario" field.
  DateTime? _pedidoProntoHorario;
  DateTime? get pedidoProntoHorario => _pedidoProntoHorario;
  set pedidoProntoHorario(DateTime? val) => _pedidoProntoHorario = val;
  bool hasPedidoProntoHorario() => _pedidoProntoHorario != null;

  // "pedido_saiu_entrega" field.
  bool? _pedidoSaiuEntrega;
  bool get pedidoSaiuEntrega => _pedidoSaiuEntrega ?? false;
  set pedidoSaiuEntrega(bool? val) => _pedidoSaiuEntrega = val;
  bool hasPedidoSaiuEntrega() => _pedidoSaiuEntrega != null;

  // "pedido_saiu_entrega_horario" field.
  DateTime? _pedidoSaiuEntregaHorario;
  DateTime? get pedidoSaiuEntregaHorario => _pedidoSaiuEntregaHorario;
  set pedidoSaiuEntregaHorario(DateTime? val) =>
      _pedidoSaiuEntregaHorario = val;
  bool hasPedidoSaiuEntregaHorario() => _pedidoSaiuEntregaHorario != null;

  // "pedido_entregue" field.
  bool? _pedidoEntregue;
  bool get pedidoEntregue => _pedidoEntregue ?? false;
  set pedidoEntregue(bool? val) => _pedidoEntregue = val;
  bool hasPedidoEntregue() => _pedidoEntregue != null;

  // "pedido_entregue_horario" field.
  DateTime? _pedidoEntregueHorario;
  DateTime? get pedidoEntregueHorario => _pedidoEntregueHorario;
  set pedidoEntregueHorario(DateTime? val) => _pedidoEntregueHorario = val;
  bool hasPedidoEntregueHorario() => _pedidoEntregueHorario != null;

  static AcompanharPedidoStruct fromMap(Map<String, dynamic> data) =>
      AcompanharPedidoStruct(
        pedidoAceito: data['pedido_aceito'] as bool?,
        horarioPedidoAceito: data['horario_pedido_aceito'] as DateTime?,
        pedidoPronto: data['pedido_pronto'] as bool?,
        pedidoProntoHorario: data['pedido_pronto_horario'] as DateTime?,
        pedidoSaiuEntrega: data['pedido_saiu_entrega'] as bool?,
        pedidoSaiuEntregaHorario:
            data['pedido_saiu_entrega_horario'] as DateTime?,
        pedidoEntregue: data['pedido_entregue'] as bool?,
        pedidoEntregueHorario: data['pedido_entregue_horario'] as DateTime?,
      );

  static AcompanharPedidoStruct? maybeFromMap(dynamic data) => data is Map
      ? AcompanharPedidoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pedido_aceito': _pedidoAceito,
        'horario_pedido_aceito': _horarioPedidoAceito,
        'pedido_pronto': _pedidoPronto,
        'pedido_pronto_horario': _pedidoProntoHorario,
        'pedido_saiu_entrega': _pedidoSaiuEntrega,
        'pedido_saiu_entrega_horario': _pedidoSaiuEntregaHorario,
        'pedido_entregue': _pedidoEntregue,
        'pedido_entregue_horario': _pedidoEntregueHorario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pedido_aceito': serializeParam(
          _pedidoAceito,
          ParamType.bool,
        ),
        'horario_pedido_aceito': serializeParam(
          _horarioPedidoAceito,
          ParamType.DateTime,
        ),
        'pedido_pronto': serializeParam(
          _pedidoPronto,
          ParamType.bool,
        ),
        'pedido_pronto_horario': serializeParam(
          _pedidoProntoHorario,
          ParamType.DateTime,
        ),
        'pedido_saiu_entrega': serializeParam(
          _pedidoSaiuEntrega,
          ParamType.bool,
        ),
        'pedido_saiu_entrega_horario': serializeParam(
          _pedidoSaiuEntregaHorario,
          ParamType.DateTime,
        ),
        'pedido_entregue': serializeParam(
          _pedidoEntregue,
          ParamType.bool,
        ),
        'pedido_entregue_horario': serializeParam(
          _pedidoEntregueHorario,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AcompanharPedidoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AcompanharPedidoStruct(
        pedidoAceito: deserializeParam(
          data['pedido_aceito'],
          ParamType.bool,
          false,
        ),
        horarioPedidoAceito: deserializeParam(
          data['horario_pedido_aceito'],
          ParamType.DateTime,
          false,
        ),
        pedidoPronto: deserializeParam(
          data['pedido_pronto'],
          ParamType.bool,
          false,
        ),
        pedidoProntoHorario: deserializeParam(
          data['pedido_pronto_horario'],
          ParamType.DateTime,
          false,
        ),
        pedidoSaiuEntrega: deserializeParam(
          data['pedido_saiu_entrega'],
          ParamType.bool,
          false,
        ),
        pedidoSaiuEntregaHorario: deserializeParam(
          data['pedido_saiu_entrega_horario'],
          ParamType.DateTime,
          false,
        ),
        pedidoEntregue: deserializeParam(
          data['pedido_entregue'],
          ParamType.bool,
          false,
        ),
        pedidoEntregueHorario: deserializeParam(
          data['pedido_entregue_horario'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AcompanharPedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AcompanharPedidoStruct &&
        pedidoAceito == other.pedidoAceito &&
        horarioPedidoAceito == other.horarioPedidoAceito &&
        pedidoPronto == other.pedidoPronto &&
        pedidoProntoHorario == other.pedidoProntoHorario &&
        pedidoSaiuEntrega == other.pedidoSaiuEntrega &&
        pedidoSaiuEntregaHorario == other.pedidoSaiuEntregaHorario &&
        pedidoEntregue == other.pedidoEntregue &&
        pedidoEntregueHorario == other.pedidoEntregueHorario;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pedidoAceito,
        horarioPedidoAceito,
        pedidoPronto,
        pedidoProntoHorario,
        pedidoSaiuEntrega,
        pedidoSaiuEntregaHorario,
        pedidoEntregue,
        pedidoEntregueHorario
      ]);
}

AcompanharPedidoStruct createAcompanharPedidoStruct({
  bool? pedidoAceito,
  DateTime? horarioPedidoAceito,
  bool? pedidoPronto,
  DateTime? pedidoProntoHorario,
  bool? pedidoSaiuEntrega,
  DateTime? pedidoSaiuEntregaHorario,
  bool? pedidoEntregue,
  DateTime? pedidoEntregueHorario,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AcompanharPedidoStruct(
      pedidoAceito: pedidoAceito,
      horarioPedidoAceito: horarioPedidoAceito,
      pedidoPronto: pedidoPronto,
      pedidoProntoHorario: pedidoProntoHorario,
      pedidoSaiuEntrega: pedidoSaiuEntrega,
      pedidoSaiuEntregaHorario: pedidoSaiuEntregaHorario,
      pedidoEntregue: pedidoEntregue,
      pedidoEntregueHorario: pedidoEntregueHorario,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AcompanharPedidoStruct? updateAcompanharPedidoStruct(
  AcompanharPedidoStruct? acompanharPedido, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    acompanharPedido
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAcompanharPedidoStructData(
  Map<String, dynamic> firestoreData,
  AcompanharPedidoStruct? acompanharPedido,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (acompanharPedido == null) {
    return;
  }
  if (acompanharPedido.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && acompanharPedido.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final acompanharPedidoData =
      getAcompanharPedidoFirestoreData(acompanharPedido, forFieldValue);
  final nestedData =
      acompanharPedidoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = acompanharPedido.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAcompanharPedidoFirestoreData(
  AcompanharPedidoStruct? acompanharPedido, [
  bool forFieldValue = false,
]) {
  if (acompanharPedido == null) {
    return {};
  }
  final firestoreData = mapToFirestore(acompanharPedido.toMap());

  // Add any Firestore field values
  acompanharPedido.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAcompanharPedidoListFirestoreData(
  List<AcompanharPedidoStruct>? acompanharPedidos,
) =>
    acompanharPedidos
        ?.map((e) => getAcompanharPedidoFirestoreData(e, true))
        .toList() ??
    [];
