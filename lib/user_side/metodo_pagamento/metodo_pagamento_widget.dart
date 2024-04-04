import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/informacoes_para_compra/informacoes_para_compra_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'metodo_pagamento_model.dart';
export 'metodo_pagamento_model.dart';

class MetodoPagamentoWidget extends StatefulWidget {
  const MetodoPagamentoWidget({
    super.key,
    bool? edit,
  }) : this.edit = edit ?? false;

  final bool edit;

  @override
  State<MetodoPagamentoWidget> createState() => _MetodoPagamentoWidgetState();
}

class _MetodoPagamentoWidgetState extends State<MetodoPagamentoWidget> {
  late MetodoPagamentoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MetodoPagamentoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        height: MediaQuery.sizeOf(context).height * 0.65,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 240.0,
                      child: Stack(
                        alignment: AlignmentDirectional(-0.95, -0.7),
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Image.network(
                              'https://odtsaxxshxzdatavzftv.supabase.co/storage/v1/object/public/img/Design%20sem%20nome%20(11).png?t=2024-03-29T08%3A08%3A46.373Z',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 240.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.15, -0.95),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pop();
                                setState(() {
                                  FFAppState().idHash =
                                      functions.gerarNumeroAletario6Digitos();
                                });
                              },
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                elevation: 3.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.arrow_back_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0x00CB8088),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: Color(0x00616161),
                            icon: Icon(
                              Icons.pix,
                              color: Color(0xFF10B910),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Pix',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue1 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => _model.checkboxValue1 = newValue!);
                                if (newValue!) {
                                  setState(() {
                                    _model.checkboxValue2 = false;
                                  });
                                  setState(() {
                                    _model.checkboxValue3 = false;
                                  });
                                }
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0x00CB8088),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: Color(0x00616161),
                            icon: Icon(
                              Icons.credit_card,
                              color: Color(0xFF10B910),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Cartão',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue2 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => _model.checkboxValue2 = newValue!);
                                if (newValue!) {
                                  setState(() {
                                    _model.checkboxValue1 = false;
                                  });
                                  setState(() {
                                    _model.checkboxValue3 = false;
                                  });
                                }
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Color(0x00CB8088),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: Color(0x00616161),
                            icon: Icon(
                              Icons.attach_money_rounded,
                              color: Color(0xFF10B910),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Text(
                            'Dinheiro',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue3 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => _model.checkboxValue3 = newValue!);
                                if (newValue!) {
                                  setState(() {
                                    _model.checkboxValue1 = false;
                                  });
                                  setState(() {
                                    _model.checkboxValue2 = false;
                                  });
                                }
                              },
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 5.0)),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (widget.edit) {
                      setState(() {
                        FFAppState().metodoPagamento = () {
                          if (_model.checkboxValue1!) {
                            return 'pix';
                          } else if (_model.checkboxValue2!) {
                            return 'cartao';
                          } else if (_model.checkboxValue3!) {
                            return 'dinheiro';
                          } else {
                            return 'pix';
                          }
                        }();
                      });
                      Navigator.pop(context);
                    } else {
                      setState(() {
                        FFAppState().metodoPagamento = () {
                          if (_model.checkboxValue1!) {
                            return 'pix';
                          } else if (_model.checkboxValue2!) {
                            return 'cartao';
                          } else if (_model.checkboxValue3!) {
                            return 'dinheiro';
                          } else {
                            return 'pix';
                          }
                        }();
                      });
                      Navigator.pop(context);
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: InformacoesParaCompraWidget(),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    }
                  },
                  text: 'Realizar Pedido',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 55.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              letterSpacing: 0.0,
                            ),
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
