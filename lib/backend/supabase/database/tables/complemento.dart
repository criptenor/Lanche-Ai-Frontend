import '../database.dart';

class ComplementoTable extends SupabaseTable<ComplementoRow> {
  @override
  String get tableName => 'complemento';

  @override
  ComplementoRow createRow(Map<String, dynamic> data) => ComplementoRow(data);
}

class ComplementoRow extends SupabaseDataRow {
  ComplementoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComplementoTable();

  int? get idLoja => getField<int>('id_loja');
  set idLoja(int? value) => setField<int>('id_loja', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeComplemento => getField<String>('nome_complemento');
  set nomeComplemento(String? value) =>
      setField<String>('nome_complemento', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
