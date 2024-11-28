// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttributesStruct extends BaseStruct {
  AttributesStruct({
    double? distance,
    double? totalDistance,
    bool? motion,
  })  : _distance = distance,
        _totalDistance = totalDistance,
        _motion = motion;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "totalDistance" field.
  double? _totalDistance;
  double get totalDistance => _totalDistance ?? 0.0;
  set totalDistance(double? val) => _totalDistance = val;

  void incrementTotalDistance(double amount) =>
      totalDistance = totalDistance + amount;

  bool hasTotalDistance() => _totalDistance != null;

  // "motion" field.
  bool? _motion;
  bool get motion => _motion ?? false;
  set motion(bool? val) => _motion = val;

  bool hasMotion() => _motion != null;

  static AttributesStruct fromMap(Map<String, dynamic> data) =>
      AttributesStruct(
        distance: castToType<double>(data['distance']),
        totalDistance: castToType<double>(data['totalDistance']),
        motion: data['motion'] as bool?,
      );

  static AttributesStruct? maybeFromMap(dynamic data) => data is Map
      ? AttributesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'distance': _distance,
        'totalDistance': _totalDistance,
        'motion': _motion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'totalDistance': serializeParam(
          _totalDistance,
          ParamType.double,
        ),
        'motion': serializeParam(
          _motion,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AttributesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttributesStruct(
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        totalDistance: deserializeParam(
          data['totalDistance'],
          ParamType.double,
          false,
        ),
        motion: deserializeParam(
          data['motion'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AttributesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttributesStruct &&
        distance == other.distance &&
        totalDistance == other.totalDistance &&
        motion == other.motion;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([distance, totalDistance, motion]);
}

AttributesStruct createAttributesStruct({
  double? distance,
  double? totalDistance,
  bool? motion,
}) =>
    AttributesStruct(
      distance: distance,
      totalDistance: totalDistance,
      motion: motion,
    );
