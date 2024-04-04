import '../database.dart';

class LojaTable extends SupabaseTable<LojaRow> {
  @override
  String get tableName => 'loja';

  @override
  LojaRow createRow(Map<String, dynamic> data) => LojaRow(data);
}

class LojaRow extends SupabaseDataRow {
  LojaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LojaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get localizacao => getField<String>('localizacao');
  set localizacao(String? value) => setField<String>('localizacao', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get paletaDeCores => getField<String>('paleta_de_cores');
  set paletaDeCores(String? value) =>
      setField<String>('paleta_de_cores', value);

  String? get numeroCelular => getField<String>('numero_celular');
  set numeroCelular(String? value) => setField<String>('numero_celular', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get emailConfirm => getField<String>('email_confirm');
  set emailConfirm(String? value) => setField<String>('email_confirm', value);

  String? get pathFoto => getField<String>('path_foto');
  set pathFoto(String? value) => setField<String>('path_foto', value);

  int? get idProgramadorAd => getField<int>('id_programador_ad');
  set idProgramadorAd(int? value) => setField<int>('id_programador_ad', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
