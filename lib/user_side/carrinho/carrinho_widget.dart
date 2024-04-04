import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_side/app_bar/app_bar_widget.dart';
import '/user_side/localizacao/localizacao_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'carrinho_model.dart';
export 'carrinho_model.dart';

class CarrinhoWidget extends StatefulWidget {
  const CarrinhoWidget({super.key});

  @override
  State<CarrinhoWidget> createState() => _CarrinhoWidgetState();
}

class _CarrinhoWidgetState extends State<CarrinhoWidget> {
  late CarrinhoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarrinhoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: wrapWithModel(
                          model: _model.appBarModel,
                          updateCallback: () => setState(() {}),
                          child: AppBarWidget(),
                        ),
                      ),
                      if (FFAppState().ProdutoSendoComprado.length != 0)
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 16.0, 12.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Seu Carrinho',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 100.0),
                                child: Builder(
                                  builder: (context) {
                                    final carrinho = FFAppState()
                                        .ProdutoSendoComprado
                                        .toList();
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(carrinho.length,
                                            (carrinhoIndex) {
                                          final carrinhoItem =
                                              carrinho[carrinhoIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 8.0),
                                            child: FutureBuilder<
                                                List<ProdutosRow>>(
                                              future: ProdutosTable()
                                                  .querySingleRow(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'id_loja',
                                                      FFAppState().IDAPP,
                                                    )
                                                    .eq(
                                                      'id',
                                                      carrinhoItem.idProduto,
                                                    ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitPulse(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ProdutosRow>
                                                    menuItemProdutosRowList =
                                                    snapshot.data!;
                                                final menuItemProdutosRow =
                                                    menuItemProdutosRowList
                                                            .isNotEmpty
                                                        ? menuItemProdutosRowList
                                                            .first
                                                        : null;
                                                return Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 3.0,
                                                        color:
                                                            Color(0x411D2429),
                                                        offset: Offset(
                                                          0.0,
                                                          1.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      1.0,
                                                                      1.0,
                                                                      1.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0),
                                                            child:
                                                                Image.network(
                                                              menuItemProdutosRow!
                                                                  .pathFoto!,
                                                              width: 80.0,
                                                              height: 80.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        4.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    menuItemProdutosRow
                                                                        ?.nome,
                                                                    'Sem Nome',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      menuItemProdutosRow
                                                                          ?.descricao,
                                                                      'Sem Descrição',
                                                                    ).maybeHandleOverflow(
                                                                      maxChars:
                                                                          70,
                                                                      replacement:
                                                                          '…',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          4.0,
                                                                          8.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.saidaEmReais(((menuItemProdutosRow!
                                                                          .valor!) +
                                                                      functions.totalApagarComplementos(
                                                                          FFAppState()
                                                                              .complementoPorProdutoHash
                                                                              .toList(),
                                                                          carrinhoItem
                                                                              .idHash))),
                                                                  'indefinido',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .end,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                if (valueOrDefault<
                                                                        String>(
                                                                      functions
                                                                          .qtdDeProdutosPorIdHash(
                                                                              FFAppState().ProdutoSendoComprado.toList(),
                                                                              carrinhoItem.idHash)
                                                                          .toString(),
                                                                      '0',
                                                                    ) ==
                                                                    '1')
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          FFAppState().ProdutoSendoComprado = functions
                                                                              .retirarDaListaPeloidHash(carrinhoItem.idHash, FFAppState().ProdutoSendoComprado.toList())
                                                                              .toList()
                                                                              .cast<ProdutoSendoCompradoStruct>();
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .delete_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (valueOrDefault<
                                                                        String>(
                                                                      functions
                                                                          .qtdDeProdutosPorIdHash(
                                                                              FFAppState().ProdutoSendoComprado.toList(),
                                                                              carrinhoItem.idHash)
                                                                          .toString(),
                                                                      '0',
                                                                    ) !=
                                                                    '1')
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        35.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .remove,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      setState(
                                                                          () {
                                                                        FFAppState().ProdutoSendoComprado = functions
                                                                            .adiconarMaisNaQuantidadeporIdHash(
                                                                                FFAppState().ProdutoSendoComprado.toList(),
                                                                                1,
                                                                                carrinhoItem.idHash,
                                                                                2)
                                                                            .toList()
                                                                            .cast<ProdutoSendoCompradoStruct>();
                                                                      });
                                                                    },
                                                                  ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      functions
                                                                          .qtdDeProdutosPorIdHash(
                                                                              FFAppState().ProdutoSendoComprado.toList(),
                                                                              carrinhoItem.idHash)
                                                                          .toString(),
                                                                      '0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              25.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                FlutterFlowIconButton(
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      35.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  icon: Icon(
                                                                    Icons.add,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 18.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      FFAppState().ProdutoSendoComprado = functions
                                                                          .adiconarMaisNaQuantidadeporIdHash(
                                                                              FFAppState().ProdutoSendoComprado.toList(),
                                                                              1,
                                                                              carrinhoItem.idHash,
                                                                              1)
                                                                          .toList()
                                                                          .cast<ProdutoSendoCompradoStruct>();
                                                                    });
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().ProdutoSendoComprado.length != 0)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: LocalizacaoWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            text: valueOrDefault<String>(
                              functions.saidaEmReais(functions.totalCompra(
                                  FFAppState().ProdutoSendoComprado.toList(),
                                  FFAppState()
                                      .complementoPorProdutoHash
                                      .toList())),
                              'indefinido',
                            ),
                            icon: Icon(
                              Icons.payment_outlined,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 364.0,
                              height: 60.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (FFAppState().ProdutoSendoComprado.length == 0)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Lottie.asset(
                      'assets/lottie_animations/629-empty-box.json',
                      width: 150.0,
                      height: 130.0,
                      fit: BoxFit.cover,
                      animate: true,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 128.0, 0.0, 0.0),
                      child: Text(
                        'Carrinho Está Vazio.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
