import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ver_viaje_model.dart';
export 'ver_viaje_model.dart';

class VerViajeWidget extends StatefulWidget {
  /// nav
  const VerViajeWidget({super.key});

  @override
  State<VerViajeWidget> createState() => _VerViajeWidgetState();
}

class _VerViajeWidgetState extends State<VerViajeWidget> {
  late VerViajeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerViajeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().ultimaPosicionMax = [];
      safeSetState(() {});
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 5000),
        callback: (timer) async {
          _model.apiResultsuu =
              await TraccarGroup.getDevicesByUniqueIDCall.call(
            uniqueId: 1,
          );

          if ((_model.apiResultsuu?.succeeded ?? true)) {
            _model.apiPosicionUltimaResult =
                await TraccarGroup.getPositionbyIdCall.call(
              id: TraccarGroup.getDevicesByUniqueIDCall.positionID(
                (_model.apiResultsuu?.jsonBody ?? ''),
              ),
            );

            if ((_model.apiPosicionUltimaResult?.succeeded ?? true)) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text(
                    'Nueva Posición',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
              FFAppState().addToUltimaPosicionMax(functions.obtenerPosicion(
                  TraccarGroup.getPositionbyIdCall.lat(
                    (_model.apiPosicionUltimaResult?.jsonBody ?? ''),
                  )!,
                  TraccarGroup.getPositionbyIdCall.long(
                    (_model.apiPosicionUltimaResult?.jsonBody ?? ''),
                  )!)!);
              safeSetState(() {});
              _model.posicionActual = functions.obtenerPosicion(
                  ((_model.apiPosicionUltimaResult?.jsonBody ?? '')
                          .toList()
                          .map<PosicionesStruct?>(PosicionesStruct.maybeFromMap)
                          .toList() as Iterable<PosicionesStruct?>)
                      .withoutNulls
                      .first
                      .latitude,
                  ((_model.apiPosicionUltimaResult?.jsonBody ?? '')
                          .toList()
                          .map<PosicionesStruct?>(PosicionesStruct.maybeFromMap)
                          .toList() as Iterable<PosicionesStruct?>)
                      .withoutNulls
                      .first
                      .longitude);
              safeSetState(() {});
              await _model.googleMapsController.future.then(
                (c) => c.animateCamera(
                  CameraUpdate.newLatLng(functions
                      .obtenerPosicion(
                          ((_model.apiPosicionUltimaResult?.jsonBody ?? '')
                                  .toList()
                                  .map<PosicionesStruct?>(
                                      PosicionesStruct.maybeFromMap)
                                  .toList() as Iterable<PosicionesStruct?>)
                              .withoutNulls
                              .first
                              .latitude,
                          ((_model.apiPosicionUltimaResult?.jsonBody ?? '')
                                  .toList()
                                  .map<PosicionesStruct?>(
                                      PosicionesStruct.maybeFromMap)
                                  .toList() as Iterable<PosicionesStruct?>)
                              .withoutNulls
                              .first
                              .longitude)!
                      .toGoogleMaps()),
                ),
              );
            }
          }
        },
        startImmediately: true,
      );
    });

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitDualRing(
              color: FlutterFlowTheme.of(context).primaryContainer,
              size: 50.0,
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Recorrido',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) =>
                      safeSetState(() => _model.googleMapsCenter = latLng),
                  initialLocation: _model.googleMapsCenter ??=
                      currentUserLocationValue!,
                  markers: FFAppState()
                      .ultimaPosicionMax
                      .map(
                        (marker) => FlutterFlowMarker(
                          marker.serialize(),
                          marker,
                        ),
                      )
                      .toList(),
                  markerColor: GoogleMarkerColor.red,
                  mapType: MapType.normal,
                  style: GoogleMapStyle.standard,
                  initialZoom: 14.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: true,
                  showMapToolbar: true,
                  showTraffic: true,
                  centerMapOnMarkerTap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
