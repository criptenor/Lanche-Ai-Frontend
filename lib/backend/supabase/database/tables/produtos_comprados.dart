import '../database.dart';

class ProdutosCompradosTable extends SupabaseTable<ProdutosCompradosRow> {
  @override
  String get tableName => 'produtos_comprados';

  @override
  ProdutosCompradosRow createRow(Map<String, dynamic> data) =>
      ProdutosCompradosRow(data);
}

class ProdutosCompradosRow extends SupabaseDataRow {
  ProdutosCompradosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutosCompradosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idLoja => getField<int>('id_loja');
  set idLoja(int? value) => setField<int>('id_loja', value);

  int? get idCompra => getField<int>('id_compra');
  set idCompra(int? value) => setField<int>('id_compra', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idHashProduto => getField<int>('id_hash_produto');
  set idHashProduto(int? value) => setField<int>('id_hash_produto', value);

  String? get observe => getField<String>('observe');
  set observe(String? value) => setField<String>('observe', value);
}
