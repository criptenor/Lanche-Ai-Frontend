import '../database.dart';

class PedidoTable extends SupabaseTable<PedidoRow> {
  @override
  String get tableName => 'pedido';

  @override
  PedidoRow createRow(Map<String, dynamic> data) => PedidoRow(data);
}

class PedidoRow extends SupabaseDataRow {
  PedidoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool? get pedidoAceito => getField<bool>('pedido_aceito');
  set pedidoAceito(bool? value) => setField<bool>('pedido_aceito', value);

  DateTime? get horarioPedidoAceito =>
      getField<DateTime>('horario_pedido_aceito');
  set horarioPedidoAceito(DateTime? value) =>
      setField<DateTime>('horario_pedido_aceito', value);

  bool? get pedidoPronto => getField<bool>('pedido_pronto');
  set pedidoPronto(bool? value) => setField<bool>('pedido_pronto', value);

  DateTime? get pedidoProntoHoraio =>
      getField<DateTime>('pedido_pronto_horaio');
  set pedidoProntoHoraio(DateTime? value) =>
      setField<DateTime>('pedido_pronto_horaio', value);

  bool? get pedidoSaiuEntrega => getField<bool>('pedido_saiu_entrega');
  set pedidoSaiuEntrega(bool? value) =>
      setField<bool>('pedido_saiu_entrega', value);

  DateTime? get pedidoSaiuEntregaHorario =>
      getField<DateTime>('pedido_saiu_entrega_horario');
  set pedidoSaiuEntregaHorario(DateTime? value) =>
      setField<DateTime>('pedido_saiu_entrega_horario', value);

  bool? get pedidoEntregue => getField<bool>('pedido_entregue');
  set pedidoEntregue(bool? value) => setField<bool>('pedido_entregue', value);

  DateTime? get pedidoEntregueHorario =>
      getField<DateTime>('pedido_entregue_horario');
  set pedidoEntregueHorario(DateTime? value) =>
      setField<DateTime>('pedido_entregue_horario', value);

  int? get idCompra => getField<int>('id_compra');
  set idCompra(int? value) => setField<int>('id_compra', value);
}
