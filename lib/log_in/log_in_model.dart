import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for inputUsuario widget.
  FocusNode? inputUsuarioFocusNode;
  TextEditingController? inputUsuarioTextController;
  String? Function(BuildContext, String?)? inputUsuarioTextControllerValidator;
  String? _inputUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Ingrese un usuario válido';
    }
    return null;
  }

  // State field(s) for inputSecreto widget.
  FocusNode? inputSecretoFocusNode;
  TextEditingController? inputSecretoTextController;
  late bool inputSecretoVisibility;
  String? Function(BuildContext, String?)? inputSecretoTextControllerValidator;
  String? _inputSecretoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    inputUsuarioTextControllerValidator = _inputUsuarioTextControllerValidator;
    inputSecretoVisibility = false;
    inputSecretoTextControllerValidator = _inputSecretoTextControllerValidator;
  }

  @override
  void dispose() {
    inputUsuarioFocusNode?.dispose();
    inputUsuarioTextController?.dispose();

    inputSecretoFocusNode?.dispose();
    inputSecretoTextController?.dispose();
  }
}
