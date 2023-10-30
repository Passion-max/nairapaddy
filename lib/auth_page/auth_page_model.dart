import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth_page_widget.dart' show AuthPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthPageModel extends FlutterFlowModel<AuthPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for signinEmail widget.
  FocusNode? signinEmailFocusNode;
  TextEditingController? signinEmailController;
  String? Function(BuildContext, String?)? signinEmailControllerValidator;
  // State field(s) for siginPassword widget.
  FocusNode? siginPasswordFocusNode;
  TextEditingController? siginPasswordController;
  late bool siginPasswordVisibility;
  String? Function(BuildContext, String?)? siginPasswordControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    siginPasswordVisibility = false;
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    signinEmailFocusNode?.dispose();
    signinEmailController?.dispose();

    siginPasswordFocusNode?.dispose();
    siginPasswordController?.dispose();

    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    emailTextController2?.dispose();

    textFieldFocusNode4?.dispose();
    textController3?.dispose();

    textFieldFocusNode5?.dispose();
    passwordTextController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
