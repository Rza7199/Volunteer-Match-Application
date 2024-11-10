import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'filter_component_model.dart';
export 'filter_component_model.dart';

class FilterComponentWidget extends StatefulWidget {
  const FilterComponentWidget({
    super.key,
    required this.filterColumn,
    required this.selectedFilterValue,
    required this.onApply,
  });

  final List<FilterColumnStruct>? filterColumn;
  final List<FilterTypeStruct>? selectedFilterValue;
  final Future Function(List<FilterTypeStruct>? filterValue)? onApply;

  @override
  State<FilterComponentWidget> createState() => _FilterComponentWidgetState();
}

class _FilterComponentWidgetState extends State<FilterComponentWidget>
    with TickerProviderStateMixin {
  late FilterComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FILTER_COMPONENT_filter_component_ON_INI');
      logFirebaseEvent('filter_component_update_component_state');
      _model.chooseCategory = FilterColumnStruct();
      _model.selectFilter =
          widget.selectedFilterValue!.toList().cast<FilterTypeStruct>();
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(500.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
        ))
          const Spacer(),
        Container(
          width: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return MediaQuery.sizeOf(context).width;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 400.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 400.0;
            } else {
              return 400.0;
            }
          }(),
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filters',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'FILTER_COMPONENT_Text_gmo4xzce_ON_TAP');
                        logFirebaseEvent('Text_close_dialog_drawer_etc');
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Close',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF1F4F8),
                          ),
                          child: Builder(
                            builder: (context) {
                              final filterColumn =
                                  FFAppState().volunteerWorkFilter.toList();

                              return SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(filterColumn.length,
                                      (filterColumnIndex) {
                                    final filterColumnItem =
                                        filterColumn[filterColumnIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'FILTER_COMPONENT_Container_xzv3zon2_ON_T');
                                        logFirebaseEvent(
                                            'Container_update_component_state');
                                        _model.chooseCategory =
                                            FilterColumnStruct();
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _model.chooseCategory?.key ==
                                                  filterColumnItem.key
                                              ? FlutterFlowTheme.of(context)
                                                  .info
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 4.0,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: valueOrDefault<Color>(
                                                  _model.chooseCategory?.key ==
                                                          filterColumnItem.key
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  const Color(0xFFF1F4F8),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  filterColumnItem.value,
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: _model.chooseCategory
                                                                        ?.key ==
                                                                    filterColumnItem
                                                                        .key
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final options =
                                    _model.chooseCategory?.options.toList() ??
                                        [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(options.length,
                                      (optionsIndex) {
                                    final optionsItem = options[optionsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'FILTER_COMPONENT_Row_b75hfttn_ON_TAP');
                                        if (functions.findFilterColumnIndex(
                                                optionsItem,
                                                _model.selectFilter.toList()) >=
                                            0) {
                                          logFirebaseEvent(
                                              'Row_update_component_state');
                                          _model.removeFromSelectFilter(
                                              FilterTypeStruct(
                                            key: _model.chooseCategory?.key,
                                          ));
                                          safeSetState(() {});
                                        } else {
                                          logFirebaseEvent(
                                              'Row_update_component_state');
                                          _model.addToSelectFilter(
                                              FilterTypeStruct(
                                            key: _model.chooseCategory?.key,
                                            value: optionsItem,
                                          ));
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Builder(
                                            builder: (context) {
                                              if (functions
                                                      .findFilterColumnIndex(
                                                          optionsItem,
                                                          _model.selectFilter
                                                              .toList()) >=
                                                  0) {
                                                return Icon(
                                                  Icons.check_box,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                );
                                              } else {
                                                return Icon(
                                                  Icons.check_box_outline_blank,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                );
                                              }
                                            },
                                          ),
                                          Text(
                                            optionsItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.0,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 5.0)),
                                      ),
                                    );
                                  }).divide(const SizedBox(height: 8.0)),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -5.0,
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'FILTER_COMPONENT_CLEAR_FILTER_BTN_ON_TAP');
                            logFirebaseEvent('Button_update_component_state');
                            _model.selectFilter = [];
                            safeSetState(() {});
                          },
                          text: 'Clear filter',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).info,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: const Color(0xFF4B39EF),
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Color(0xFF4B39EF),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          showLoadingIndicator: false,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'FILTER_COMPONENT_COMP_APPLY_BTN_ON_TAP');
                            logFirebaseEvent('Button_execute_callback');
                            await widget.onApply?.call(
                              _model.selectFilter,
                            );
                            logFirebaseEvent('Button_close_dialog_drawer_etc');
                            Navigator.pop(context);
                          },
                          text: 'Apply',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          showLoadingIndicator: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ],
    );
  }
}
