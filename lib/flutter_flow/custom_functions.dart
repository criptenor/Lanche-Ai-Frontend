import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

int pegarIdpeloNome(
  String nome,
  List<CategoriaRow> registros,
) {
  // pegar id da categoria pelo nome
  for (final registro in registros) {
    if (registro.nome == nome) {
      return registro.id;
    }
  }
  return -1;
}

int? indexdoultimoitemcomidComplemento(
  int idComplemento,
  List<CategoriaProdutoUniqueStruct> registros,
  int idHash,
) {
  int? indexEncontrado;

  // Iterar sobre os registros
  int index = 0;
  for (final complemento in registros) {
    if (complemento.idComplemento == idComplemento &&
        complemento.idHashProduto == idHash) {
      indexEncontrado = index;
    }
    index++;
  }

  return indexEncontrado;
}

List<int> listaDeIdsProdutosProdutos(
  List<ProdutoSendoCompradoStruct> complemento,
  int campo,
) {
  List<int> listaIds = [];
  complemento.forEach((produto) {
    switch (campo) {
      case 1:
        listaIds.add(produto.idHash);
        break;
      case 2:
        listaIds.add(produto.idProduto);
        break;
      case 3:
        listaIds.add(produto.quantidade);
        break;
      default:
        // Handle unknown campo value or add additional cases if needed
        break;
    }
  });
  return listaIds;
}

int qtdComplementoPorIdComplemento(
  int idComplemento,
  List<CategoriaProdutoUniqueStruct> registros,
  int idHash,
) {
  // quantidade de registros com idComplemento igual ao parametro
  int count = 0;
  for (var registro in registros) {
    if (registro.idComplemento == idComplemento &&
        registro.idHashProduto == idHash) {
      count++;
    }
  }
  return count;
}

double totalApagarComplementos(
  List<CategoriaProdutoUniqueStruct>? complementos,
  int idhash,
) {
  // complementos com idhash igual ao parametro somar valor
  double total = 0.0;
  if (complementos != null) {
    for (var complemento in complementos) {
      if (complemento.idHashProduto == idhash) {
        total += complemento.valorComplemento;
      }
    }
  }
  return total;
}

List<ProdutoSendoCompradoStruct> duplicar(
  List<ProdutoSendoCompradoStruct> registros,
  int idHash,
) {
  int? lastIndex;

  // Iterar sobre os registros para encontrar o índice do último registro com o idHash fornecido
  for (int i = registros.length - 1; i >= 0; i--) {
    if (registros[i].idHash == idHash) {
      lastIndex = i;
      break;
    }
  }

  // Se encontrarmos o último registro com o idHash fornecido, duplicamos este registro
  if (lastIndex != null) {
    ProdutoSendoCompradoStruct ultimoRegistro = registros[lastIndex];
    registros.add(ultimoRegistro);
  }

  return registros;
}

int? indexdoultimoitemcomidhashprodutoCopy(
  List<ProdutoSendoCompradoStruct> registros,
  int idHash,
) {
  int? indexEncontrado;

  // Iterar sobre os registros
  int index = 0;
  for (final complemento in registros) {
    if (complemento.idHash == idHash) {
      indexEncontrado = index;
    }
    index++;
  }

  return indexEncontrado;
}

int gerarNumeroAletario6Digitos() {
  // gerar numero inteiro com 6 digitos
  return math.Random().nextInt(900000) + 100000;
}

int numeroDeItensNojSon(List<dynamic> json) {
  // return numero de itens json
  return json.length;
}

String entradaStringSaidaPathFoto(String? pathFotoString) {
  // converter o tipo da pathfotoSting para imagepath
  if (pathFotoString == null) {
    return '';
  }
  final bytes = base64.decode(pathFotoString);
  return 'data:image/jpeg;base64,${base64Encode(bytes)}';
}

List<String> acahrObserveList(
  List<ProdutoSendoCompradoStruct> complemento,
  int campo,
) {
  List<String> listaIds = [];
  complemento.forEach((produto) {
    switch (campo) {
      case 1:
        listaIds.add(produto.observ);

      default:
        // Handle unknown campo value or add additional cases if needed
        break;
    }
  });
  return listaIds;
}

LatLng? newCustomFunction(
  String latitude,
  String logitude,
) {
  // retorne localizacao com latitude e longitude
  return LatLng(double.parse(latitude), double.parse(logitude));
}

bool? diferenteDeNull(String? entrada) {
  // entrada é diferente de Null?
  return entrada != null;
}

double? totalCompra(
  List<ProdutoSendoCompradoStruct> produtosComprados,
  List<CategoriaProdutoUniqueStruct>? complementosNoProduto,
) {
  double total = 0;

  // Somando o valor de todos os produtos
  for (var produto in produtosComprados) {
    total += produto.valor * produto.quantidade;

    // Se houver complementos
    if (complementosNoProduto != null && complementosNoProduto.isNotEmpty) {
      int? idHashP = produto.idHash;
      double complementosTotal = 0;

      for (var complemento in complementosNoProduto) {
        if (complemento.idHashProduto == idHashP) {
          complementosTotal +=
              complemento.valorComplemento * produto.quantidade;
        }
      }

      total += complementosTotal;
    }
  }

  return total;
}

List<int> pegarTodosIdsHistorico(List<HistricoDeComprasStruct>? historico) {
  List<int> todosIds = [];

  if (historico != null) {
    for (var item in historico) {
      todosIds.add(item
          .idCompraSp); // Supondo que o ID esteja armazenado na propriedade 'id' do HistóricoDeComprasStruct
    }
  }

  return todosIds;
}

DateTime stringParaDateTime(String dateTimeString) {
  // entrada detetime em string saida em datetime
  return DateTime.parse(dateTimeString);
}

String? saidaEmReais(double? entrada) {
  if (entrada == null) {
    return null;
  } else {
    final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    return formatter.format(entrada);
  }
}

int qtdDeProdutosPorIdHash(
  List<ProdutoSendoCompradoStruct> registros,
  int idHash,
) {
  // quantidade de produtos com idHash igual ao aparametro
  int count = 0;
  for (var registro in registros) {
    if (registro.idHash == idHash) {
      count = registro.quantidade;
    }
  }
  return count;
}

String? newCustomFunction2(
  List<ProdutoSendoCompradoStruct>? produto,
  List<CategoriaProdutoUniqueStruct>? complemento,
) {
  // mostre todos os registros desses datatype e coloque na string
  String result = '';

  if (produto != null) {
    for (var p in produto) {
      result +=
          'id produto: ${p.idProduto}, idha: ${p.idHash}, Preço: ${p.valor}\n';
    }
  }

  if (complemento != null) {
    for (var c in complemento) {
      result +=
          'compl: ${c.idComplemento}, idHash: ${c.idHashProduto} ${c.idProduto}\n';
    }
  }

  return result.isNotEmpty ? result : null;
}

List<int> listaDeIdsProdutos(
  List<CategoriaProdutoUniqueStruct> complemento,
  int campo,
) {
  List<int> listaIds = [];
  complemento.forEach((produto) {
    switch (campo) {
      case 1:
        listaIds.add(produto.idComplemento);
        break;
      case 2:
        listaIds.add(produto.idProduto);
        break;
      case 3:
        listaIds.add(produto.idHashProduto);
        break;
      default:
        // Handle unknown campo value or add additional cases if needed
        break;
    }
  });
  return listaIds;
}

List<HistricoDeComprasStruct> incrementarhistorico(
  List<HistricoDeComprasStruct> historico,
  List<ProdutoSendoCompradoStruct> novosRegistros,
  int idCompra,
) {
  final now = DateTime.now();

  // Adicionar todos os registros de produtos sendo comprados ao histórico
  for (final novoRegistro in novosRegistros) {
    historico.add(HistricoDeComprasStruct(
        idCompraSp: idCompra, idProduto: novoRegistro.idProduto));
  }
  return historico;
}

bool localVazio(LatLng? local) {
  // se local for vazio return true else return false
  if (local == null) {
    return true;
  } else {
    return false;
  }
}

List<ProdutoSendoCompradoStruct> retirarDaListaPeloidHash(
  int idHash,
  List<ProdutoSendoCompradoStruct> produtos,
) {
  // excluir todos os produtos onde idHash for igual ao parametro
  produtos.removeWhere((produto) => produto.idHash == idHash);

  return produtos;
}

List<ProdutoSendoCompradoStruct> setQuantidadeDeProdutosPorIdHash(
  List<ProdutoSendoCompradoStruct> produtos,
  int idHash,
  int quantidade,
) {
  List<ProdutoSendoCompradoStruct> produtosFiltrados =
      produtos.where((produto) => produto.idHash == idHash).toList();

  // Cria uma nova lista de produtos replicando-os de acordo com a quantidade especificada
  List<ProdutoSendoCompradoStruct> produtosReplicados = [];
  for (var produto in produtosFiltrados) {
    for (var i = 0; i < quantidade; i++) {
      produtosReplicados.add(produto);
    }
  }

  return produtosReplicados;
}

List<ProdutoSendoCompradoStruct> adiconarMaisNaQuantidadeporIdHash(
  List<ProdutoSendoCompradoStruct> produtoComprado,
  int fator,
  int? idHash,
  int operacao,
) {
  int lastIndex = -1;

  // Iteramos pela lista de registros de trás para frente para encontrar o último registro com o idHash especificado
  for (int i = produtoComprado.length - 1; i >= 0; i--) {
    if (produtoComprado[i].idHash == idHash) {
      lastIndex = i;
      break;
    }
  }

  // Se encontrarmos o último registro com o idHash fornecido, atualizamos sua quantidade
  if (lastIndex != -1) {
    ProdutoSendoCompradoStruct ultimoRegistro = produtoComprado[lastIndex];
    // Verificamos a operação correspondente
    if (operacao == 1) {
      ultimoRegistro.quantidade += fator; // Adiciona fator
    } else if (operacao == 2) {
      ultimoRegistro.quantidade -= fator; // Subtrai fator
    }
    produtoComprado[lastIndex] = ultimoRegistro;
  }

  return produtoComprado;
}

String percentualSaida(double percentualEntrada) {
  // multiplique por 100 com 1 unica casa decimal tranforme em string e coloque %
  double percentualSaida = percentualEntrada * 100;
  percentualSaida = (percentualSaida * 10).round() / 10;
  return percentualSaida.toStringAsFixed(1) + '%';
}

List<int> horasDoDia() {
  // retorne uma lista com 24 numeros do 00 ao 23
  return List.generate(24, (index) => index);
}
