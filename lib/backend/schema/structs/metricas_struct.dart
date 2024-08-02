// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetricasStruct extends FFFirebaseStruct {
  MetricasStruct({
    double? percentualPix,
    double? percentualCartao,
    double? percentualEntreguesRetirados,
    int? totalVendasHoje,
    String? tempoMedioPedido,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _percentualPix = percentualPix,
        _percentualCartao = percentualCartao,
        _percentualEntreguesRetirados = percentualEntreguesRetirados,
        _totalVendasHoje = totalVendasHoje,
        _tempoMedioPedido = tempoMedioPedido,
        super(firestoreUtilData);

  // "percentual_pix" field.
  double? _percentualPix;
  double get percentualPix => _percentualPix ?? 0.0;
  set percentualPix(double? val) => _percentualPix = val;
  void incrementPercentualPix(double amount) =>
      _percentualPix = percentualPix + amount;
  bool hasPercentualPix() => _percentualPix != null;

  // "percentual_cartao" field.
  double? _percentualCartao;
  double get percentualCartao => _percentualCartao ?? 0.0;
  set percentualCartao(double? val) => _percentualCartao = val;
  void incrementPercentualCartao(double amount) =>
      _percentualCartao = percentualCartao + amount;
  bool hasPercentualCartao() => _percentualCartao != null;

  // "percentual_entregues_retirados" field.
  double? _percentualEntreguesRetirados;
  double get percentualEntreguesRetirados =>
      _percentualEntreguesRetirados ?? 0.0;
  set percentualEntreguesRetirados(double? val) =>
      _percentualEntreguesRetirados = val;
  void incrementPercentualEntreguesRetirados(double amount) =>
      _percentualEntreguesRetirados = percentualEntreguesRetirados + amount;
  bool hasPercentualEntreguesRetirados() =>
      _percentualEntreguesRetirados != null;

  // "total_vendas_hoje" field.
  int? _totalVendasHoje;
  int get totalVendasHoje => _totalVendasHoje ?? 0;
  set totalVendasHoje(int? val) => _totalVendasHoje = val;
  void incrementTotalVendasHoje(int amount) =>
      _totalVendasHoje = totalVendasHoje + amount;
  bool hasTotalVendasHoje() => _totalVendasHoje != null;

  // "tempo_medio_pedido" field.
  String? _tempoMedioPedido;
  String get tempoMedioPedido => _tempoMedioPedido ?? '';
  set tempoMedioPedido(String? val) => _tempoMedioPedido = val;
  bool hasTempoMedioPedido() => _tempoMedioPedido != null;

  static MetricasStruct fromMap(Map<String, dynamic> data) => MetricasStruct(
        percentualPix: castToType<double>(data['percentual_pix']),
        percentualCartao: castToType<double>(data['percentual_cartao']),
        percentualEntreguesRetirados:
            castToType<double>(data['percentual_entregues_retirados']),
        totalVendasHoje: castToType<int>(data['total_vendas_hoje']),
        tempoMedioPedido: data['tempo_medio_pedido'] as String?,
      );

  static MetricasStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetricasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'percentual_pix': _percentualPix,
        'percentual_cartao': _percentualCartao,
        'percentual_entregues_retirados': _percentualEntreguesRetirados,
        'total_vendas_hoje': _totalVendasHoje,
        'tempo_medio_pedido': _tempoMedioPedido,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'percentual_pix': serializeParam(
          _percentualPix,
          ParamType.double,
        ),
        'percentual_cartao': serializeParam(
          _percentualCartao,
          ParamType.double,
        ),
        'percentual_entregues_retirados': serializeParam(
          _percentualEntreguesRetirados,
          ParamType.double,
        ),
        'total_vendas_hoje': serializeParam(
          _totalVendasHoje,
          ParamType.int,
        ),
        'tempo_medio_pedido': serializeParam(
          _tempoMedioPedido,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetricasStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetricasStruct(
        percentualPix: deserializeParam(
          data['percentual_pix'],
          ParamType.double,
          false,
        ),
        percentualCartao: deserializeParam(
          data['percentual_cartao'],
          ParamType.double,
          false,
        ),
        percentualEntreguesRetirados: deserializeParam(
          data['percentual_entregues_retirados'],
          ParamType.double,
          false,
        ),
        totalVendasHoje: deserializeParam(
          data['total_vendas_hoje'],
          ParamType.int,
          false,
        ),
        tempoMedioPedido: deserializeParam(
          data['tempo_medio_pedido'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MetricasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetricasStruct &&
        percentualPix == other.percentualPix &&
        percentualCartao == other.percentualCartao &&
        percentualEntreguesRetirados == other.percentualEntreguesRetirados &&
        totalVendasHoje == other.totalVendasHoje &&
        tempoMedioPedido == other.tempoMedioPedido;
  }

  @override
  int get hashCode => const ListEquality().hash([
        percentualPix,
        percentualCartao,
        percentualEntreguesRetirados,
        totalVendasHoje,
        tempoMedioPedido
      ]);
}

MetricasStruct createMetricasStruct({
  double? percentualPix,
  double? percentualCartao,
  double? percentualEntreguesRetirados,
  int? totalVendasHoje,
  String? tempoMedioPedido,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MetricasStruct(
      percentualPix: percentualPix,
      percentualCartao: percentualCartao,
      percentualEntreguesRetirados: percentualEntreguesRetirados,
      totalVendasHoje: totalVendasHoje,
      tempoMedioPedido: tempoMedioPedido,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MetricasStruct? updateMetricasStruct(
  MetricasStruct? metricas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    metricas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMetricasStructData(
  Map<String, dynamic> firestoreData,
  MetricasStruct? metricas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (metricas == null) {
    return;
  }
  if (metricas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && metricas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final metricasData = getMetricasFirestoreData(metricas, forFieldValue);
  final nestedData = metricasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = metricas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMetricasFirestoreData(
  MetricasStruct? metricas, [
  bool forFieldValue = false,
]) {
  if (metricas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(metricas.toMap());

  // Add any Firestore field values
  metricas.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMetricasListFirestoreData(
  List<MetricasStruct>? metricass,
) =>
    metricass?.map((e) => getMetricasFirestoreData(e, true)).toList() ?? [];
