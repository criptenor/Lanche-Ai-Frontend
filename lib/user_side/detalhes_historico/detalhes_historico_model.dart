import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/progresso_pedido/progresso_pedido_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'detalhes_historico_widget.dart' show DetalhesHistoricoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class DetalhesHistoricoModel extends FlutterFlowModel<DetalhesHistoricoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for progressoPedido component.
  late ProgressoPedidoModel progressoPedidoModel;

  @override
  void initState(BuildContext context) {
    progressoPedidoModel = createModel(context, () => ProgressoPedidoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    progressoPedidoModel.dispose();
  }
}
