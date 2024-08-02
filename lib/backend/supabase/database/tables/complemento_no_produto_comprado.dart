import '../database.dart';

class ComplementoNoProdutoCompradoTable
    extends SupabaseTable<ComplementoNoProdutoCompradoRow> {
  @override
  String get tableName => 'complemento_no_produto_comprado';

  @override
  ComplementoNoProdutoCompradoRow createRow(Map<String, dynamic> data) =>
      ComplementoNoProdutoCompradoRow(data);
}

class ComplementoNoProdutoCompradoRow extends SupabaseDataRow {
  ComplementoNoProdutoCompradoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComplementoNoProdutoCompradoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idLoja => getField<int>('id_loja');
  set idLoja(int? value) => setField<int>('id_loja', value);

  int? get idCompra => getField<int>('id_compra');
  set idCompra(int? value) => setField<int>('id_compra', value);

  int? get idComplemento => getField<int>('id_complemento');
  set idComplemento(int? value) => setField<int>('id_complemento', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idHashProduto => getField<int>('id_hash_produto');
  set idHashProduto(int? value) => setField<int>('id_hash_produto', value);
}
