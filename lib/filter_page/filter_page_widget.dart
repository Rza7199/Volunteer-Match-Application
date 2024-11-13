import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/detail/detail_widget.dart';
import '/pages/filter_component/filter_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'filter_page_model.dart';
export 'filter_page_model.dart';

class FilterPageWidget extends StatefulWidget {
  const FilterPageWidget({super.key});

  @override
  State<FilterPageWidget> createState() => _FilterPageWidgetState();
}

class _FilterPageWidgetState extends State<FilterPageWidget> {
  late FilterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'FilterPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE73659), Color(0x67C11EC3)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) => FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                FFIcons.kslidersH,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'FILTER_PAGE_PAGE_FilterButton_ON_TAP');
                                logFirebaseEvent('FilterButton_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () =>
                                            FocusScope.of(dialogContext)
                                                .unfocus(),
                                        child: SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: FilterComponentWidget(
                                            filterColumn: FFAppState()
                                                .volunteerWorkFilter,
                                            selectedFilterValue:
                                                _model.filterField,
                                            onApply: (filterValue) async {
                                              logFirebaseEvent(
                                                  '_update_page_state');
                                              _model.filterField = filterValue!
                                                  .toList()
                                                  .cast<FilterTypeStruct>();
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Expanded(
                            child: Builder(
                              builder: (context) {
                                final allField = _model.filterField
                                    .map((e) => e.value)
                                    .toList();

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(allField.length,
                                        (allFieldIndex) {
                                      final allFieldItem =
                                          allField[allFieldIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'FILTER_PAGE_PAGE_ItemContainer_ON_TAP');
                                          logFirebaseEvent(
                                              'ItemContainer_update_page_state');
                                          _model.removeAtIndexFromFilterField(
                                              allFieldIndex);
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Icon(
                                                    Icons.close_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 18.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }).divide(const SizedBox(width: 5.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ]
                            .addToStart(const SizedBox(width: 8.0))
                            .addToEnd(const SizedBox(width: 8.0)),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.9, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'FILTER_PAGE_PAGE_Icon_dvvckqr2_ON_TAP');
                            logFirebaseEvent('Icon_navigate_to');

                            context.pushNamed('UIUX');
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                    StreamBuilder<List<VolunteerWorkListRecord>>(
                      stream: queryVolunteerWorkListRecord(
                        queryBuilder: (volunteerWorkListRecord) =>
                            volunteerWorkListRecord.whereIn(
                                'Title',
                                FFAppState()
                                    .volunteerWorkFilter
                                    .map((e) => e.value)
                                    .toList()),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<VolunteerWorkListRecord>
                            listViewVolunteerWorkListRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewVolunteerWorkListRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewVolunteerWorkListRecord =
                                listViewVolunteerWorkListRecordList[
                                    listViewIndex];
                            return DetailWidget(
                              key: Key(
                                  'Keyzr5_${listViewIndex}_of_${listViewVolunteerWorkListRecordList.length}'),
                              user: listViewVolunteerWorkListRecord,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
