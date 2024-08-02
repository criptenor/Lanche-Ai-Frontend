import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_adm_widget.dart' show NavAdmWidget;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class NavAdmModel extends FlutterFlowModel<NavAdmWidget> {
  ///  Local state fields for this component.

  int numeroItens = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in NavAdm widget.
  List<CompraRow>? compra;
  // Stores action output result for [Backend Call - Query Rows] action in NavAdm widget.
  List<PedidoRow>? itens;
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
