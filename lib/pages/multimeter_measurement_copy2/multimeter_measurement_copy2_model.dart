import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/display_rec_mesg/display_rec_mesg_widget.dart';
import 'multimeter_measurement_copy2_widget.dart'
    show MultimeterMeasurementCopy2Widget;
import 'package:flutter/material.dart';

class MultimeterMeasurementCopy2Model
    extends FlutterFlowModel<MultimeterMeasurementCopy2Widget> {
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
