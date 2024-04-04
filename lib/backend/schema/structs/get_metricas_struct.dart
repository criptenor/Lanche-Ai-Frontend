// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetMetricasStruct extends FFFirebaseStruct {
  GetMetricasStruct({
    double? pixPercentual,
    double? cartaoPercentual,
    double? dinheiroPercentual,
    int? vendasUltimas24h,
    String? horarioDePico,
    double? totalPix,
    double? totalCartao,
    double? totalDinhreiro,
    String? tempomediototal,
    String? tempomediopedido,
    double? valorTotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pixPercentual = pixPercentual,
        _cartaoPercentual = cartaoPercentual,
        _dinheiroPercentual = dinheiroPercentual,
        _vendasUltimas24h = vendasUltimas24h,
        _horarioDePico = horarioDePico,
        _totalPix = totalPix,
        _totalCartao = totalCartao,
        _totalDinhreiro = totalDinhreiro,
        _tempomediototal = tempomediototal,
        _tempomediopedido = tempomediopedido,
        _valorTotal = valorTotal,
        super(firestoreUtilData);

  // "pix_percentual" field.
  double? _pixPercentual;
  double get pixPercentual => _pixPercentual ?? 0.0;
  set pixPercentual(double? val) => _pixPercentual = val;
  void incrementPixPercentual(double amount) =>
      _pixPercentual = pixPercentual + amount;
  bool hasPixPercentual() => _pixPercentual != null;

  // "cartao_percentual" field.
  double? _cartaoPercentual;
  double get cartaoPercentual => _cartaoPercentual ?? 0.0;
  set cartaoPercentual(double? val) => _cartaoPercentual = val;
  void incrementCartaoPercentual(double amount) =>
      _cartaoPercentual = cartaoPercentual + amount;
  bool hasCartaoPercentual() => _cartaoPercentual != null;

  // "dinheiro_percentual" field.
  double? _dinheiroPercentual;
  double get dinheiroPercentual => _dinheiroPercentual ?? 0.0;
  set dinheiroPercentual(double? val) => _dinheiroPercentual = val;
  void incrementDinheiroPercentual(double amount) =>
      _dinheiroPercentual = dinheiroPercentual + amount;
  bool hasDinheiroPercentual() => _dinheiroPercentual != null;

  // "vendas_ultimas_24h" field.
  int? _vendasUltimas24h;
  int get vendasUltimas24h => _vendasUltimas24h ?? 0;
  set vendasUltimas24h(int? val) => _vendasUltimas24h = val;
  void incrementVendasUltimas24h(int amount) =>
      _vendasUltimas24h = vendasUltimas24h + amount;
  bool hasVendasUltimas24h() => _vendasUltimas24h != null;

  // "horario_de_pico" field.
  String? _horarioDePico;
  String get horarioDePico => _horarioDePico ?? '';
  set horarioDePico(String? val) => _horarioDePico = val;
  bool hasHorarioDePico() => _horarioDePico != null;

  // "total_pix" field.
  double? _totalPix;
  double get totalPix => _totalPix ?? 0.0;
  set totalPix(double? val) => _totalPix = val;
  void incrementTotalPix(double amount) => _totalPix = totalPix + amount;
  bool hasTotalPix() => _totalPix != null;

  // "totalCartao" field.
  double? _totalCartao;
  double get totalCartao => _totalCartao ?? 0.0;
  set totalCartao(double? val) => _totalCartao = val;
  void incrementTotalCartao(double amount) =>
      _totalCartao = totalCartao + amount;
  bool hasTotalCartao() => _totalCartao != null;

  // "totalDinhreiro" field.
  double? _totalDinhreiro;
  double get totalDinhreiro => _totalDinhreiro ?? 0.0;
  set totalDinhreiro(double? val) => _totalDinhreiro = val;
  void incrementTotalDinhreiro(double amount) =>
      _totalDinhreiro = totalDinhreiro + amount;
  bool hasTotalDinhreiro() => _totalDinhreiro != null;

  // "tempomediototal" field.
  String? _tempomediototal;
  String get tempomediototal => _tempomediototal ?? '';
  set tempomediototal(String? val) => _tempomediototal = val;
  bool hasTempomediototal() => _tempomediototal != null;

  // "tempomediopedido" field.
  String? _tempomediopedido;
  String get tempomediopedido => _tempomediopedido ?? '';
  set tempomediopedido(String? val) => _tempomediopedido = val;
  bool hasTempomediopedido() => _tempomediopedido != null;

  // "valor_total" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  set valorTotal(double? val) => _valorTotal = val;
  void incrementValorTotal(double amount) => _valorTotal = valorTotal + amount;
  bool hasValorTotal() => _valorTotal != null;

  static GetMetricasStruct fromMap(Map<String, dynamic> data) =>
      GetMetricasStruct(
        pixPercentual: castToType<double>(data['pix_percentual']),
        cartaoPercentual: castToType<double>(data['cartao_percentual']),
        dinheiroPercentual: castToType<double>(data['dinheiro_percentual']),
        vendasUltimas24h: castToType<int>(data['vendas_ultimas_24h']),
        horarioDePico: data['horario_de_pico'] as String?,
        totalPix: castToType<double>(data['total_pix']),
        totalCartao: castToType<double>(data['totalCartao']),
        totalDinhreiro: castToType<double>(data['totalDinhreiro']),
        tempomediototal: data['tempomediototal'] as String?,
        tempomediopedido: data['tempomediopedido'] as String?,
        valorTotal: castToType<double>(data['valor_total']),
      );

  static GetMetricasStruct? maybeFromMap(dynamic data) => data is Map
      ? GetMetricasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pix_percentual': _pixPercentual,
        'cartao_percentual': _cartaoPercentual,
        'dinheiro_percentual': _dinheiroPercentual,
        'vendas_ultimas_24h': _vendasUltimas24h,
        'horario_de_pico': _horarioDePico,
        'total_pix': _totalPix,
        'totalCartao': _totalCartao,
        'totalDinhreiro': _totalDinhreiro,
        'tempomediototal': _tempomediototal,
        'tempomediopedido': _tempomediopedido,
        'valor_total': _valorTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pix_percentual': serializeParam(
          _pixPercentual,
          ParamType.double,
        ),
        'cartao_percentual': serializeParam(
          _cartaoPercentual,
          ParamType.double,
        ),
        'dinheiro_percentual': serializeParam(
          _dinheiroPercentual,
          ParamType.double,
        ),
        'vendas_ultimas_24h': serializeParam(
          _vendasUltimas24h,
          ParamType.int,
        ),
        'horario_de_pico': serializeParam(
          _horarioDePico,
          ParamType.String,
        ),
        'total_pix': serializeParam(
          _totalPix,
          ParamType.double,
        ),
        'totalCartao': serializeParam(
          _totalCartao,
          ParamType.double,
        ),
        'totalDinhreiro': serializeParam(
          _totalDinhreiro,
          ParamType.double,
        ),
        'tempomediototal': serializeParam(
          _tempomediototal,
          ParamType.String,
        ),
        'tempomediopedido': serializeParam(
          _tempomediopedido,
          ParamType.String,
        ),
        'valor_total': serializeParam(
          _valorTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static GetMetricasStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetMetricasStruct(
        pixPercentual: deserializeParam(
          data['pix_percentual'],
          ParamType.double,
          false,
        ),
        cartaoPercentual: deserializeParam(
          data['cartao_percentual'],
          ParamType.double,
          false,
        ),
        dinheiroPercentual: deserializeParam(
          data['dinheiro_percentual'],
          ParamType.double,
          false,
        ),
        vendasUltimas24h: deserializeParam(
          data['vendas_ultimas_24h'],
          ParamType.int,
          false,
        ),
        horarioDePico: deserializeParam(
          data['horario_de_pico'],
          ParamType.String,
          false,
        ),
        totalPix: deserializeParam(
          data['total_pix'],
          ParamType.double,
          false,
        ),
        totalCartao: deserializeParam(
          data['totalCartao'],
          ParamType.double,
          false,
        ),
        totalDinhreiro: deserializeParam(
          data['totalDinhreiro'],
          ParamType.double,
          false,
        ),
        tempomediototal: deserializeParam(
          data['tempomediototal'],
          ParamType.String,
          false,
        ),
        tempomediopedido: deserializeParam(
          data['tempomediopedido'],
          ParamType.String,
          false,
        ),
        valorTotal: deserializeParam(
          data['valor_total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'GetMetricasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetMetricasStruct &&
        pixPercentual == other.pixPercentual &&
        cartaoPercentual == other.cartaoPercentual &&
        dinheiroPercentual == other.dinheiroPercentual &&
        vendasUltimas24h == other.vendasUltimas24h &&
        horarioDePico == other.horarioDePico &&
        totalPix == other.totalPix &&
        totalCartao == other.totalCartao &&
        totalDinhreiro == other.totalDinhreiro &&
        tempomediototal == other.tempomediototal &&
        tempomediopedido == other.tempomediopedido &&
        valorTotal == other.valorTotal;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pixPercentual,
        cartaoPercentual,
        dinheiroPercentual,
        vendasUltimas24h,
        horarioDePico,
        totalPix,
        totalCartao,
        totalDinhreiro,
        tempomediototal,
        tempomediopedido,
        valorTotal
      ]);
}

GetMetricasStruct createGetMetricasStruct({
  double? pixPercentual,
  double? cartaoPercentual,
  double? dinheiroPercentual,
  int? vendasUltimas24h,
  String? horarioDePico,
  double? totalPix,
  double? totalCartao,
  double? totalDinhreiro,
  String? tempomediototal,
  String? tempomediopedido,
  double? valorTotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetMetricasStruct(
      pixPercentual: pixPercentual,
      cartaoPercentual: cartaoPercentual,
      dinheiroPercentual: dinheiroPercentual,
      vendasUltimas24h: vendasUltimas24h,
      horarioDePico: horarioDePico,
      totalPix: totalPix,
      totalCartao: totalCartao,
      totalDinhreiro: totalDinhreiro,
      tempomediototal: tempomediototal,
      tempomediopedido: tempomediopedido,
      valorTotal: valorTotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetMetricasStruct? updateGetMetricasStruct(
  GetMetricasStruct? getMetricas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getMetricas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetMetricasStructData(
  Map<String, dynamic> firestoreData,
  GetMetricasStruct? getMetricas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getMetricas == null) {
    return;
  }
  if (getMetricas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && getMetricas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getMetricasData =
      getGetMetricasFirestoreData(getMetricas, forFieldValue);
  final nestedData =
      getMetricasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = getMetricas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetMetricasFirestoreData(
  GetMetricasStruct? getMetricas, [
  bool forFieldValue = false,
]) {
  if (getMetricas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getMetricas.toMap());

  // Add any Firestore field values
  getMetricas.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetMetricasListFirestoreData(
  List<GetMetricasStruct>? getMetricass,
) =>
    getMetricass?.map((e) => getGetMetricasFirestoreData(e, true)).toList() ??
    [];
