import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'ver_viaje_widget.dart' show VerViajeWidget;
import 'package:flutter/material.dart';

class VerViajeModel extends FlutterFlowModel<VerViajeWidget> {
  ///  Local state fields for this page.

  LatLng? posicionActual;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (getDevicesByUniqueID)] action in verViaje widget.
  ApiCallResponse? apiResultsuu;
  // Stores action output result for [Backend Call - API (getPositionbyId)] action in verViaje widget.
  ApiCallResponse? apiPosicionUltimaResult;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
