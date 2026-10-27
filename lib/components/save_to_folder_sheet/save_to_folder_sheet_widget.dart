import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'save_to_folder_sheet_model.dart';
export 'save_to_folder_sheet_model.dart';

class SaveToFolderSheetWidget extends StatefulWidget {
  const SaveToFolderSheetWidget({
    super.key,
    required this.businessRef,
  });

  final DocumentReference? businessRef;

  @override
  State<SaveToFolderSheetWidget> createState() =>
      _SaveToFolderSheetWidgetState();
}

class _SaveToFolderSheetWidgetState extends State<SaveToFolderSheetWidget> {
  late SaveToFolderSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveToFolderSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.5,
      height: 297.4,
      decoration: BoxDecoration(
        color: Color(0xFF2B2E3B),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                'Save to',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.notoSerif(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: Color(0xFFFEFEFE),
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await currentUserReference!.update({
                    ...mapToFirestore(
                      {
                        'favoritePlaces':
                            FieldValue.arrayUnion([widget.businessRef]),
                      },
                    ),
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Save to Favorite Places',
                        style: GoogleFonts.notoSerif(
                          color: Color(0xFFFEFEFE),
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: Color(0xFF2B2E3B),
                    ),
                  );
                  Navigator.pop(context);
                },
                child: Container(
                  width: 399.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF424552),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Favorite Places',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.notoSerif(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFFFF7F27),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            StreamBuilder<List<FavoriteFoldersRecord>>(
              stream: queryFavoriteFoldersRecord(
                queryBuilder: (favoriteFoldersRecord) =>
                    favoriteFoldersRecord.orderBy('createdAt'),
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
                List<FavoriteFoldersRecord> listViewFavoriteFoldersRecordList =
                    snapshot.data!;

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewFavoriteFoldersRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewFavoriteFoldersRecord =
                        listViewFavoriteFoldersRecordList[listViewIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await listViewFavoriteFoldersRecord.reference.update({
                            ...mapToFirestore(
                              {
                                'business': FieldValue.arrayUnion(
                                    [widget.businessRef]),
                              },
                            ),
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Save to ${listViewFavoriteFoldersRecord.name}',
                                style: GoogleFonts.notoSerif(
                                  color: Color(0xFFFEFEFE),
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor: Color(0xFF2B2E3B),
                            ),
                          );
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 265.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF424552),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                listViewFavoriteFoldersRecord.name,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFFF7F27),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
