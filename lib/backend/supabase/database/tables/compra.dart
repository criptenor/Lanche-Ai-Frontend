import '../database.dart';

class CompraTable extends SupabaseTable<CompraRow> {
  @override
  String get tableName => 'compra';

  @override
  CompraRow createRow(Map<String, dynamic> data) => CompraRow(data);
}

class CompraRow extends SupabaseDataRow {
  CompraRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CompraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  int? get idLoja => getField<int>('id_loja');
  set idLoja(int? value) => setField<int>('id_loja', value);

  String? get numeroUsuario => getField<String>('numero_usuario');
  set numeroUsuario(String? value) => setField<String>('numero_usuario', value);

  DateTime? get diaehoarario => getField<DateTime>('diaehoarario');
  set diaehoarario(DateTime? value) =>
      setField<DateTime>('diaehoarario', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get localEntrega => getField<String>('local_entrega');
  set localEntrega(String? value) => setField<String>('local_entrega', value);

  String? get metodoPagamento => getField<String>('metodo_pagamento');
  set metodoPagamento(String? value) =>
      setField<String>('metodo_pagamento', value);
}
