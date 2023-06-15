import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for imageURL widget.
  TextEditingController? imageURLController;
  String? Function(BuildContext, String?)? imageURLControllerValidator;
  // State field(s) for ActualName widget.
  TextEditingController? actualNameController;
  String? Function(BuildContext, String?)? actualNameControllerValidator;
  // State field(s) for displayName widget.
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for Nationality widget.
  TextEditingController? nationalityController;
  String? Function(BuildContext, String?)? nationalityControllerValidator;
  // State field(s) for Phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for DateofBirth widget.
  TextEditingController? dateofBirthController;
  String? Function(BuildContext, String?)? dateofBirthControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    imageURLController?.dispose();
    actualNameController?.dispose();
    displayNameController?.dispose();
    nationalityController?.dispose();
    phoneController?.dispose();
    dateofBirthController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
