import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/observacaoproduto/observacaoproduto_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'detalhes_produto_widget.dart' show DetalhesProdutoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class DetalhesProdutoModel extends FlutterFlowModel<DetalhesProdutoWidget> {
  ///  Local state fields for this page.

  int contador = 0;

  int hashitem = 0;

  int qtd = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
