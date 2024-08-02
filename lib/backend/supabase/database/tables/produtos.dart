import '../database.dart';

class ProdutosTable extends SupabaseTable<ProdutosRow> {
  @override
  String get tableName => 'produtos';

  @override
  ProdutosRow createRow(Map<String, dynamic> data) => ProdutosRow(data);
}

class ProdutosRow extends SupabaseDataRow {
  ProdutosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idLoja => getField<int>('id_loja');
  set idLoja(int? value) => setField<int>('id_loja', value);

  int? get idCategoria => getField<int>('id_categoria');
  set idCategoria(int? value) => setField<int>('id_categoria', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get pathFoto => getField<String>('path_foto');
  set pathFoto(String? value) => setField<String>('path_foto', value);
}
