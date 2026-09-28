import '/flutter_flow/flutter_flow_util.dart';
import 'add_folder_dialog_widget.dart' show AddFolderDialogWidget;
import 'package:flutter/material.dart';

class AddFolderDialogModel extends FlutterFlowModel<AddFolderDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfFolderName widget.
  FocusNode? tfFolderNameFocusNode;
  TextEditingController? tfFolderNameTextController;
  String? Function(BuildContext, String?)? tfFolderNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfFolderNameFocusNode?.dispose();
    tfFolderNameTextController?.dispose();
  }
}
