import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.myFocusNode,
    this.nextFocusNode,
    this.errorText,
    this.onSubmit,
  });
  final String hintText;
  final String labelText;
  final String? errorText;
  final FocusNode? myFocusNode;
  final FocusNode? nextFocusNode;
  final TextEditingController controller;
  final ValueChanged<String>? onSubmit;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller: controller,
      focusNode: myFocusNode,
      style: FlutterFlowTheme.of(context).bodyText1,
      onFieldSubmitted: (value) {
        if (nextFocusNode != null && onSubmit == null) {
          FocusScope.of(context).requestFocus(nextFocusNode);
        }
        if (onSubmit != null) {
          onSubmit!(value);
        }
      },
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,
        hintStyle: FlutterFlowTheme.of(context).bodyText2,
        labelStyle: FlutterFlowTheme.of(context).bodyText2,
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).primaryBackground,
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
      ),
    );
  }
}
