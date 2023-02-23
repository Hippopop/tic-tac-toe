import 'package:tic_tac_toe/src/features/auth/view/flutter_flow_widget.dart';
import 'package:tic_tac_toe/src/services/flutter_flow_model.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SIgnInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
  }

  /// Additional helper methods are added here.
}

class SIgnInWidget extends StatefulWidget {
  const SIgnInWidget({Key? key}) : super(key: key);

  @override
  _SIgnInWidgetState createState() => _SIgnInWidgetState();
}

class _SIgnInWidgetState extends State<SIgnInWidget> {
  late SIgnInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SIgnInModel());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome!',
                    style: FlutterFlowTheme.of(context).title1,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'Use the form below to access your account.',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _model.emailAddressController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              hintText: 'Enter your email here...',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            maxLines: null,
                            validator: _model.emailAddressControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _model.passwordController,
                            obscureText: !_model.passwordVisibility,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              hintText: 'Enter your password here...',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 24, 24, 24),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => _model.passwordVisibility =
                                      !_model.passwordVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            validator: _model.passwordControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 24, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button-Login pressed ...');
                    },
                    text: 'Login',
                    options: FFButtonOptions(
                      width: 130,
                      height: 50,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 3,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Create Account',
                    options: FFButtonOptions(
                      width: 150,
                      height: 30,
                      color: const Color(0x00FFFFFF),
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryColor,
                          ),
                      elevation: 0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
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
