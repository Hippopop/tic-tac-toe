import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

/* 

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for PlayCard component.
  late PlayCardModel playCardModel1;
  // Model for PlayCard component.
  late PlayCardModel playCardModel2;
  // Model for PlayCard component.
  late PlayCardModel playCardModel3;
  // Model for PlayCard component.
  late PlayCardModel playCardModel4;
  // Model for PlayCard component.
  late PlayCardModel playCardModel5;
  // Model for PlayCard component.
  late PlayCardModel playCardModel6;
  // Model for PlayCard component.
  late PlayCardModel playCardModel7;
  // Model for PlayCard component.
  late PlayCardModel playCardModel8;
  // Model for PlayCard component.
  late PlayCardModel playCardModel9;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    playCardModel1 = createModel(context, () => PlayCardModel());
    playCardModel2 = createModel(context, () => PlayCardModel());
    playCardModel3 = createModel(context, () => PlayCardModel());
    playCardModel4 = createModel(context, () => PlayCardModel());
    playCardModel5 = createModel(context, () => PlayCardModel());
    playCardModel6 = createModel(context, () => PlayCardModel());
    playCardModel7 = createModel(context, () => PlayCardModel());
    playCardModel8 = createModel(context, () => PlayCardModel());
    playCardModel9 = createModel(context, () => PlayCardModel());
  }

  void dispose() {
    playCardModel1.dispose();
    playCardModel2.dispose();
    playCardModel3.dispose();
    playCardModel4.dispose();
    playCardModel5.dispose();
    playCardModel6.dispose();
    playCardModel7.dispose();
    playCardModel8.dispose();
    playCardModel9.dispose();
  }

  /// Additional helper methods are added here.

} */

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/276/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                        child: Icon(
                          Icons.multiple_stop,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.75,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    /*  wrapWithModel(
                      model: _model.playCardModel1,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel2,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel3,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel4,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel5,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel6,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel7,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel8,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ),
                    wrapWithModel(
                      model: _model.playCardModel9,
                      updateCallback: () => setState(() {}),
                      child: PlayCardWidget(),
                    ), */
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16, 16, 16, 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.home_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                            Icon(
                              Icons.add_circle,
                              color: Colors.black,
                              size: 48,
                            ),
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
