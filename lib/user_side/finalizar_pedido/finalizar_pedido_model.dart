import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/informacoes_para_compra/informacoes_para_compra_widget.dart';
import '/user_side/localizacao/localizacao_widget.dart';
import '/user_side/metodo_pagamento/metodo_pagamento_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'finalizar_pedido_widget.dart' show FinalizarPedidoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class FinalizarPedidoModel extends FlutterFlowModel<FinalizarPedidoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  CompraRow? compra;
  // Stores action output result for [Backend Call - API (inserirComplementoNoProdutoComprado)] action in Button widget.
  ApiCallResponse? complementosInseirdos;
  // Stores action output result for [Backend Call - API (inseirProdutoComprado)] action in Button widget.
  ApiCallResponse? produtos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
