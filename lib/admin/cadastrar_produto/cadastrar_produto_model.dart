import '/admin/nav_adm/nav_adm_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'cadastrar_produto_widget.dart' show CadastrarProdutoWidget;
import 'dart:async';
import 'package:badges/badges.dart' as badges;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarProdutoModel extends FlutterFlowModel<CadastrarProdutoWidget> {
  ///  Local state fields for this page.

  String activeTab = 'general';

  String activemenu = 'settings';

  bool location = false;

  int? idCompra;

  int? idComplemento;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in cadastrarProduto widget.
  List<ProdutosRow>? randonProduto;
  Completer<List<ProdutosRow>>? requestCompleter3;
  // Stores action output result for [Backend Call - Query Rows] action in cadastrarProduto widget.
  List<CategoriaRow>? pagecompl;
  Completer<List<CategoriaRow>>? requestCompleter4;
  Completer<List<CategoriaRow>>? requestCompleter2;
  // Model for NavAdm component.
  late NavAdmModel navAdmModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  Completer<List<LojaRow>>? requestCompleter5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for update widget.
  FocusNode? updateFocusNode;
  TextEditingController? updateController;
  String? Function(BuildContext, String?)? updateControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriaRow>? categoria;
  // State field(s) for pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaController;
  String? Function(BuildContext, String?)? pesquisaControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for cad widget.
  FocusNode? cadFocusNode1;
  TextEditingController? cadController1;
  String? Function(BuildContext, String?)? cadController1Validator;
  // State field(s) for cad widget.
  FocusNode? cadFocusNode2;
  TextEditingController? cadController2;
  String? Function(BuildContext, String?)? cadController2Validator;
  // State field(s) for cad widget.
  FocusNode? cadFocusNode3;
  TextEditingController? cadController3;
  String? Function(BuildContext, String?)? cadController3Validator;
  // State field(s) for cad widget.
  String? cadValue;
  FormFieldController<String>? cadValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriaRow>? categoriaInsert;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  Completer<List<CategoriaRow>>? requestCompleter1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;

  @override
  void initState(BuildContext context) {
    navAdmModel = createModel(context, () => NavAdmModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navAdmModel.dispose();
    tabBarController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    updateFocusNode?.dispose();
    updateController?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    pesquisaFocusNode?.dispose();
    pesquisaController?.dispose();

    cadFocusNode1?.dispose();
    cadController1?.dispose();

    cadFocusNode2?.dispose();
    cadController2?.dispose();

    cadFocusNode3?.dispose();
    cadController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController8?.dispose();

    textFieldFocusNode4?.dispose();
    textController9?.dispose();

    textFieldFocusNode5?.dispose();
    textController10?.dispose();

    textFieldFocusNode6?.dispose();
    textController11?.dispose();

    textFieldFocusNode7?.dispose();
    textController12?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter5?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get radioButtonValue2 => radioButtonValueController2?.value;
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  String? get radioButtonValue3 => radioButtonValueController3?.value;
}
