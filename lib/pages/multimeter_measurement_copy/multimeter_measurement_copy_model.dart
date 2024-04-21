import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/display_rec_mesg/display_rec_mesg_widget.dart';
import 'multimeter_measurement_copy_widget.dart'
    show MultimeterMeasurementCopyWidget;
import 'package:flutter/material.dart';

class MultimeterMeasurementCopyModel
    extends FlutterFlowModel<MultimeterMeasurementCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DisplayRecMesg component.
  late DisplayRecMesgModel displayRecMesgModel;

  @override
  void initState(BuildContext context) {
    displayRecMesgModel = createModel(context, () => DisplayRecMesgModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    displayRecMesgModel.dispose();
  }
}
