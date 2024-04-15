import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PegarProdutosMaisVendidosCall {
  static Future<ApiCallResponse> call({
    int? appid = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "id_loja_param": "${appid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pegarProdutosMaisVendidos',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/obter_produtos_comprados',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? idproduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome_produto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? valorProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? descProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fotoProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].path_foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? vezesComprados(dynamic response) => (getJsonField(
        response,
        r'''$[:].vezes_comprado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PesquisaProdutosCall {
  static Future<ApiCallResponse> call({
    String? produto = '',
    int? idApp,
  }) async {
    final ffApiRequestBody = '''
{
  "id_loja_param": "${idApp}",
  "nome_parcial": "${produto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pesquisaProdutos',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/buscar_produtos_por_nome_e_loja',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].path_foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? desc(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? valor(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? categoria(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_categoria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? loja(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_loja''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PegarHistoricoComprasCall {
  static Future<ApiCallResponse> call({
    int? lojaId,
    List<int>? pedidoIdsList,
  }) async {
    final pedidoIds = _serializeList(pedidoIdsList);

    final ffApiRequestBody = '''
{
  "loja_id": ${lojaId},
  "pedido_ids": ${pedidoIds}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pegarHistoricoCompras',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/get_historico',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ComplementosCallCall {
  static Future<ApiCallResponse> call({
    int? lojaId,
    int? compra,
    int? produto,
    int? idHash,
  }) async {
    final ffApiRequestBody = '''
{
  "id_compra_input": ${compra},
  "id_loja_input": ${lojaId},
  "id_produto_input": ${produto},
  "id_hash_produto_input": ${idHash}

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'complementosCall',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/obter_quantidade_complementos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InserirComplementoNoProdutoCompradoCall {
  static Future<ApiCallResponse> call({
    int? lojaId,
    int? compra,
    List<int>? produtoList,
    List<int>? idHashList,
    List<int>? complementoList,
  }) async {
    final produto = _serializeList(produtoList);
    final idHash = _serializeList(idHashList);
    final complemento = _serializeList(complementoList);

    final ffApiRequestBody = '''
{
  "id_complemento_list": ${complemento},
  "id_compra_input": ${compra},
  "id_hash_produto_list": ${idHash},
  "id_loja_input": ${lojaId},
  "id_produto_list": ${produto}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inserirComplementoNoProdutoComprado',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/inserir_complemento_no_produto_comprado',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InseirProdutoCompradoCall {
  static Future<ApiCallResponse> call({
    int? lojaId,
    int? compra,
    List<int>? produtoList,
    List<int>? idHashList,
    List<int>? quantidadeList,
    List<String>? observeListList,
  }) async {
    final produto = _serializeList(produtoList);
    final idHash = _serializeList(idHashList);
    final quantidade = _serializeList(quantidadeList);
    final observeList = _serializeList(observeListList);

    final ffApiRequestBody = '''
{
  "id_compra_input": ${compra},
  "id_hash_produto_list": ${idHash},
  "id_loja_input": ${lojaId},
  "id_produto_list": ${produto},
  "quantidade_list": ${quantidade},
  "observe_list": ${observeList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inseirProdutoComprado',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/inserir_produto_comprado',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExibirDetalhesProdutoHistoricoColunaCall {
  static Future<ApiCallResponse> call({
    int? lojaId,
    int? compra,
  }) async {
    final ffApiRequestBody = '''
{
  "id_compra_input": ${compra},
  "id_loja_input": ${lojaId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exibirDetalhesProdutoHistoricoColuna',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/obter_produtos_comprados',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMetricasCall {
  static Future<ApiCallResponse> call({
    int? idLoja,
  }) async {
    final ffApiRequestBody = '''
{
  "id_loja_param": ${idLoja}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getMetricas',
      apiUrl:
          'https://odtsaxxshxzdatavzftv.supabase.co/rest/v1/rpc/calcular_metricas',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9kdHNheHhzaHh6ZGF0YXZ6ZnR2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTYzNDMsImV4cCI6MjAyNzA3MjM0M30.04XvHLUvjkIdsmu5keJGbUL88DAp97H5bE_a06DdpW4',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static double? valoTotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valor_total_vendas_24h''',
      ));
  static int? qtdProduto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].qtd_produtos_vendidos_24h''',
      ));
  static int? valorDinheiro(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_total_dinheiro_24h''',
      ));
  static int? percentDinheiro(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].percentual_pagamento_dinheiro_24h''',
      ));
  static int? percentCartao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].percentual_pagamento_cartao_24h''',
      ));
  static String? velocidadeProducao(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].velocidade_total_producao_24h''',
      ));
  static double? totalPix(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].valor_total_pix_24h''',
      ));
  static int? totalCartao(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].valor_total_cartao_24h''',
      ));
  static int? percentPix(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].percentual_pagamento_pix_24h''',
      ));
  static String? velocidadeTotal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].velocidade_total_atendimento_24h''',
      ));
}

class WebWppCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'webWpp',
      apiUrl: 'http://127.0.0.1:8000/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
