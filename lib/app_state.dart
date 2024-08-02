import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _IDAPP = prefs.getInt('ff_IDAPP') ?? _IDAPP;
    });
    _safeInit(() {
      _complementoPorProdutoHash = prefs
              .getStringList('ff_complementoPorProdutoHash')
              ?.map((x) {
                try {
                  return CategoriaProdutoUniqueStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _complementoPorProdutoHash;
    });
    _safeInit(() {
      _UsuarioNome = prefs.getString('ff_UsuarioNome') ?? _UsuarioNome;
    });
    _safeInit(() {
      _UsuarioNumero = prefs.getString('ff_UsuarioNumero') ?? _UsuarioNumero;
    });
    _safeInit(() {
      _historicoDeCompras = prefs
              .getStringList('ff_historicoDeCompras')
              ?.map((x) {
                try {
                  return HistricoDeComprasStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _historicoDeCompras;
    });
    _safeInit(() {
      _localizacao = prefs.getString('ff_localizacao') ?? _localizacao;
    });
    _safeInit(() {
      _coordenadas =
          latLngFromString(prefs.getString('ff_coordenadas')) ?? _coordenadas;
    });
    _safeInit(() {
      _numeroItens = prefs.getInt('ff_numeroItens') ?? _numeroItens;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _IDAPP = 1;
  int get IDAPP => _IDAPP;
  set IDAPP(int _value) {
    _IDAPP = _value;
    prefs.setInt('ff_IDAPP', _value);
  }

  List<ProdutoSendoCompradoStruct> _ProdutoSendoComprado = [];
  List<ProdutoSendoCompradoStruct> get ProdutoSendoComprado =>
      _ProdutoSendoComprado;
  set ProdutoSendoComprado(List<ProdutoSendoCompradoStruct> _value) {
    _ProdutoSendoComprado = _value;
  }

  void addToProdutoSendoComprado(ProdutoSendoCompradoStruct _value) {
    _ProdutoSendoComprado.add(_value);
  }

  void removeFromProdutoSendoComprado(ProdutoSendoCompradoStruct _value) {
    _ProdutoSendoComprado.remove(_value);
  }

  void removeAtIndexFromProdutoSendoComprado(int _index) {
    _ProdutoSendoComprado.removeAt(_index);
  }

  void updateProdutoSendoCompradoAtIndex(
    int _index,
    ProdutoSendoCompradoStruct Function(ProdutoSendoCompradoStruct) updateFn,
  ) {
    _ProdutoSendoComprado[_index] = updateFn(_ProdutoSendoComprado[_index]);
  }

  void insertAtIndexInProdutoSendoComprado(
      int _index, ProdutoSendoCompradoStruct _value) {
    _ProdutoSendoComprado.insert(_index, _value);
  }

  List<CategoriaProdutoUniqueStruct> _complementoPorProdutoHash = [];
  List<CategoriaProdutoUniqueStruct> get complementoPorProdutoHash =>
      _complementoPorProdutoHash;
  set complementoPorProdutoHash(List<CategoriaProdutoUniqueStruct> _value) {
    _complementoPorProdutoHash = _value;
    prefs.setStringList('ff_complementoPorProdutoHash',
        _value.map((x) => x.serialize()).toList());
  }

  void addToComplementoPorProdutoHash(CategoriaProdutoUniqueStruct _value) {
    _complementoPorProdutoHash.add(_value);
    prefs.setStringList('ff_complementoPorProdutoHash',
        _complementoPorProdutoHash.map((x) => x.serialize()).toList());
  }

  void removeFromComplementoPorProdutoHash(
      CategoriaProdutoUniqueStruct _value) {
    _complementoPorProdutoHash.remove(_value);
    prefs.setStringList('ff_complementoPorProdutoHash',
        _complementoPorProdutoHash.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromComplementoPorProdutoHash(int _index) {
    _complementoPorProdutoHash.removeAt(_index);
    prefs.setStringList('ff_complementoPorProdutoHash',
        _complementoPorProdutoHash.map((x) => x.serialize()).toList());
  }

  void updateComplementoPorProdutoHashAtIndex(
    int _index,
    CategoriaProdutoUniqueStruct Function(CategoriaProdutoUniqueStruct)
        updateFn,
  ) {
    _complementoPorProdutoHash[_index] =
        updateFn(_complementoPorProdutoHash[_index]);
    prefs.setStringList('ff_complementoPorProdutoHash',
        _complementoPorProdutoHash.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInComplementoPorProdutoHash(
      int _index, CategoriaProdutoUniqueStruct _value) {
    _complementoPorProdutoHash.insert(_index, _value);
    prefs.setStringList('ff_complementoPorProdutoHash',
        _complementoPorProdutoHash.map((x) => x.serialize()).toList());
  }

  int _idHash = 0;
  int get idHash => _idHash;
  set idHash(int _value) {
    _idHash = _value;
  }

  List<ProdutoSendoPesquisadoStruct> _produtoSendoPesquisado = [];
  List<ProdutoSendoPesquisadoStruct> get produtoSendoPesquisado =>
      _produtoSendoPesquisado;
  set produtoSendoPesquisado(List<ProdutoSendoPesquisadoStruct> _value) {
    _produtoSendoPesquisado = _value;
  }

  void addToProdutoSendoPesquisado(ProdutoSendoPesquisadoStruct _value) {
    _produtoSendoPesquisado.add(_value);
  }

  void removeFromProdutoSendoPesquisado(ProdutoSendoPesquisadoStruct _value) {
    _produtoSendoPesquisado.remove(_value);
  }

  void removeAtIndexFromProdutoSendoPesquisado(int _index) {
    _produtoSendoPesquisado.removeAt(_index);
  }

  void updateProdutoSendoPesquisadoAtIndex(
    int _index,
    ProdutoSendoPesquisadoStruct Function(ProdutoSendoPesquisadoStruct)
        updateFn,
  ) {
    _produtoSendoPesquisado[_index] = updateFn(_produtoSendoPesquisado[_index]);
  }

  void insertAtIndexInProdutoSendoPesquisado(
      int _index, ProdutoSendoPesquisadoStruct _value) {
    _produtoSendoPesquisado.insert(_index, _value);
  }

  String _UsuarioNome = '';
  String get UsuarioNome => _UsuarioNome;
  set UsuarioNome(String _value) {
    _UsuarioNome = _value;
    prefs.setString('ff_UsuarioNome', _value);
  }

  String _UsuarioNumero = '';
  String get UsuarioNumero => _UsuarioNumero;
  set UsuarioNumero(String _value) {
    _UsuarioNumero = _value;
    prefs.setString('ff_UsuarioNumero', _value);
  }

  List<HistricoDeComprasStruct> _historicoDeCompras = [];
  List<HistricoDeComprasStruct> get historicoDeCompras => _historicoDeCompras;
  set historicoDeCompras(List<HistricoDeComprasStruct> _value) {
    _historicoDeCompras = _value;
    prefs.setStringList(
        'ff_historicoDeCompras', _value.map((x) => x.serialize()).toList());
  }

  void addToHistoricoDeCompras(HistricoDeComprasStruct _value) {
    _historicoDeCompras.add(_value);
    prefs.setStringList('ff_historicoDeCompras',
        _historicoDeCompras.map((x) => x.serialize()).toList());
  }

  void removeFromHistoricoDeCompras(HistricoDeComprasStruct _value) {
    _historicoDeCompras.remove(_value);
    prefs.setStringList('ff_historicoDeCompras',
        _historicoDeCompras.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromHistoricoDeCompras(int _index) {
    _historicoDeCompras.removeAt(_index);
    prefs.setStringList('ff_historicoDeCompras',
        _historicoDeCompras.map((x) => x.serialize()).toList());
  }

  void updateHistoricoDeComprasAtIndex(
    int _index,
    HistricoDeComprasStruct Function(HistricoDeComprasStruct) updateFn,
  ) {
    _historicoDeCompras[_index] = updateFn(_historicoDeCompras[_index]);
    prefs.setStringList('ff_historicoDeCompras',
        _historicoDeCompras.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInHistoricoDeCompras(
      int _index, HistricoDeComprasStruct _value) {
    _historicoDeCompras.insert(_index, _value);
    prefs.setStringList('ff_historicoDeCompras',
        _historicoDeCompras.map((x) => x.serialize()).toList());
  }

  String _localizacao = '';
  String get localizacao => _localizacao;
  set localizacao(String _value) {
    _localizacao = _value;
    prefs.setString('ff_localizacao', _value);
  }

  String _metodoPagamento = '';
  String get metodoPagamento => _metodoPagamento;
  set metodoPagamento(String _value) {
    _metodoPagamento = _value;
  }

  LatLng? _coordenadas;
  LatLng? get coordenadas => _coordenadas;
  set coordenadas(LatLng? _value) {
    _coordenadas = _value;
    _value != null
        ? prefs.setString('ff_coordenadas', _value.serialize())
        : prefs.remove('ff_coordenadas');
  }

  GetMetricasStruct _analitics = GetMetricasStruct();
  GetMetricasStruct get analitics => _analitics;
  set analitics(GetMetricasStruct _value) {
    _analitics = _value;
  }

  void updateAnaliticsStruct(Function(GetMetricasStruct) updateFn) {
    updateFn(_analitics);
  }

  List<dynamic> _tasks = [];
  List<dynamic> get tasks => _tasks;
  set tasks(List<dynamic> _value) {
    _tasks = _value;
  }

  void addToTasks(dynamic _value) {
    _tasks.add(_value);
  }

  void removeFromTasks(dynamic _value) {
    _tasks.remove(_value);
  }

  void removeAtIndexFromTasks(int _index) {
    _tasks.removeAt(_index);
  }

  void updateTasksAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _tasks[_index] = updateFn(_tasks[_index]);
  }

  void insertAtIndexInTasks(int _index, dynamic _value) {
    _tasks.insert(_index, _value);
  }

  List<dynamic> _lists = [];
  List<dynamic> get lists => _lists;
  set lists(List<dynamic> _value) {
    _lists = _value;
  }

  void addToLists(dynamic _value) {
    _lists.add(_value);
  }

  void removeFromLists(dynamic _value) {
    _lists.remove(_value);
  }

  void removeAtIndexFromLists(int _index) {
    _lists.removeAt(_index);
  }

  void updateListsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _lists[_index] = updateFn(_lists[_index]);
  }

  void insertAtIndexInLists(int _index, dynamic _value) {
    _lists.insert(_index, _value);
  }

  int _numeroItens = 0;
  int get numeroItens => _numeroItens;
  set numeroItens(int _value) {
    _numeroItens = _value;
    prefs.setInt('ff_numeroItens', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
