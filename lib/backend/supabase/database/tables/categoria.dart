import '../database.dart';

class CategoriaTable extends SupabaseTable<CategoriaRow> {
  @override
  String get tableName => 'categoria';

  @override
  CategoriaRow createRow(Map<String, dynamic> data) => CategoriaRow(data);
}

class CategoriaRow extends SupabaseDataRow {
  CategoriaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idLoja => getField<int>('id_loja');
  set idLoja(int? value) => setField<int>('id_loja', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get pathFoto => getField<String>('path_foto');
  set pathFoto(String? value) => setField<String>('path_foto', value);
}
