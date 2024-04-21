import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/display_rec_mesg/display_rec_mesg_widget.dart';
import 'package:flutter/material.dart';
import 'multimeter_measurement_copy2_model.dart';
export 'multimeter_measurement_copy2_model.dart';

class MultimeterMeasurementCopy2Widget extends StatefulWidget {
  const MultimeterMeasurementCopy2Widget({
    super.key,
    required this.deviceName,
    required this.deviceID,
    required this.deviceRssi,
    required this.hasWriteCharacteristic,
  });

  final String? deviceName;
  final String? deviceID;
  final int? deviceRssi;
  final bool? hasWriteCharacteristic;

  @override
  State<MultimeterMeasurementCopy2Widget> createState() =>
      _MultimeterMeasurementCopy2WidgetState();
}

class _MultimeterMeasurementCopy2WidgetState
    extends State<MultimeterMeasurementCopy2Widget> {
  late MultimeterMeasurementCopy2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MultimeterMeasurementCopy2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'View your measured value below.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Montserrat',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.displayRecMesgModel,
                        updateCallback: () => setState(() {}),
                        child: DisplayRecMesgWidget(
                          device: BTDeviceStruct(
                            name: widget.deviceName,
                            id: widget.deviceID,
                            rssi: widget.deviceRssi,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
