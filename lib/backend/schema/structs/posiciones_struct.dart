// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PosicionesStruct extends BaseStruct {
  PosicionesStruct({
    int? id,
    AttributesStruct? attributes,
    int? deviceId,
    String? protocol,
    String? serverTime,
    String? deviceTime,
    String? fixTime,
    bool? outdated,
    bool? valid,
    double? latitude,
    double? longitude,
    int? altitude,
    int? speed,
    int? course,
    String? address,
    int? accuracy,
    String? network,
    String? geofenceIds,
  })  : _id = id,
        _attributes = attributes,
        _deviceId = deviceId,
        _protocol = protocol,
        _serverTime = serverTime,
        _deviceTime = deviceTime,
        _fixTime = fixTime,
        _outdated = outdated,
        _valid = valid,
        _latitude = latitude,
        _longitude = longitude,
        _altitude = altitude,
        _speed = speed,
        _course = course,
        _address = address,
        _accuracy = accuracy,
        _network = network,
        _geofenceIds = geofenceIds;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "attributes" field.
  AttributesStruct? _attributes;
  AttributesStruct get attributes => _attributes ?? AttributesStruct();
  set attributes(AttributesStruct? val) => _attributes = val;

  void updateAttributes(Function(AttributesStruct) updateFn) {
    updateFn(_attributes ??= AttributesStruct());
  }

  bool hasAttributes() => _attributes != null;

  // "deviceId" field.
  int? _deviceId;
  int get deviceId => _deviceId ?? 0;
  set deviceId(int? val) => _deviceId = val;

  void incrementDeviceId(int amount) => deviceId = deviceId + amount;

  bool hasDeviceId() => _deviceId != null;

  // "protocol" field.
  String? _protocol;
  String get protocol => _protocol ?? '';
  set protocol(String? val) => _protocol = val;

  bool hasProtocol() => _protocol != null;

  // "serverTime" field.
  String? _serverTime;
  String get serverTime => _serverTime ?? '';
  set serverTime(String? val) => _serverTime = val;

  bool hasServerTime() => _serverTime != null;

  // "deviceTime" field.
  String? _deviceTime;
  String get deviceTime => _deviceTime ?? '';
  set deviceTime(String? val) => _deviceTime = val;

  bool hasDeviceTime() => _deviceTime != null;

  // "fixTime" field.
  String? _fixTime;
  String get fixTime => _fixTime ?? '';
  set fixTime(String? val) => _fixTime = val;

  bool hasFixTime() => _fixTime != null;

  // "outdated" field.
  bool? _outdated;
  bool get outdated => _outdated ?? false;
  set outdated(bool? val) => _outdated = val;

  bool hasOutdated() => _outdated != null;

  // "valid" field.
  bool? _valid;
  bool get valid => _valid ?? false;
  set valid(bool? val) => _valid = val;

  bool hasValid() => _valid != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  // "altitude" field.
  int? _altitude;
  int get altitude => _altitude ?? 0;
  set altitude(int? val) => _altitude = val;

  void incrementAltitude(int amount) => altitude = altitude + amount;

  bool hasAltitude() => _altitude != null;

  // "speed" field.
  int? _speed;
  int get speed => _speed ?? 0;
  set speed(int? val) => _speed = val;

  void incrementSpeed(int amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  // "course" field.
  int? _course;
  int get course => _course ?? 0;
  set course(int? val) => _course = val;

  void incrementCourse(int amount) => course = course + amount;

  bool hasCourse() => _course != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "accuracy" field.
  int? _accuracy;
  int get accuracy => _accuracy ?? 0;
  set accuracy(int? val) => _accuracy = val;

  void incrementAccuracy(int amount) => accuracy = accuracy + amount;

  bool hasAccuracy() => _accuracy != null;

  // "network" field.
  String? _network;
  String get network => _network ?? '';
  set network(String? val) => _network = val;

  bool hasNetwork() => _network != null;

  // "geofenceIds" field.
  String? _geofenceIds;
  String get geofenceIds => _geofenceIds ?? '';
  set geofenceIds(String? val) => _geofenceIds = val;

  bool hasGeofenceIds() => _geofenceIds != null;

  static PosicionesStruct fromMap(Map<String, dynamic> data) =>
      PosicionesStruct(
        id: castToType<int>(data['id']),
        attributes: AttributesStruct.maybeFromMap(data['attributes']),
        deviceId: castToType<int>(data['deviceId']),
        protocol: data['protocol'] as String?,
        serverTime: data['serverTime'] as String?,
        deviceTime: data['deviceTime'] as String?,
        fixTime: data['fixTime'] as String?,
        outdated: data['outdated'] as bool?,
        valid: data['valid'] as bool?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        altitude: castToType<int>(data['altitude']),
        speed: castToType<int>(data['speed']),
        course: castToType<int>(data['course']),
        address: data['address'] as String?,
        accuracy: castToType<int>(data['accuracy']),
        network: data['network'] as String?,
        geofenceIds: data['geofenceIds'] as String?,
      );

  static PosicionesStruct? maybeFromMap(dynamic data) => data is Map
      ? PosicionesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'attributes': _attributes?.toMap(),
        'deviceId': _deviceId,
        'protocol': _protocol,
        'serverTime': _serverTime,
        'deviceTime': _deviceTime,
        'fixTime': _fixTime,
        'outdated': _outdated,
        'valid': _valid,
        'latitude': _latitude,
        'longitude': _longitude,
        'altitude': _altitude,
        'speed': _speed,
        'course': _course,
        'address': _address,
        'accuracy': _accuracy,
        'network': _network,
        'geofenceIds': _geofenceIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'attributes': serializeParam(
          _attributes,
          ParamType.DataStruct,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.int,
        ),
        'protocol': serializeParam(
          _protocol,
          ParamType.String,
        ),
        'serverTime': serializeParam(
          _serverTime,
          ParamType.String,
        ),
        'deviceTime': serializeParam(
          _deviceTime,
          ParamType.String,
        ),
        'fixTime': serializeParam(
          _fixTime,
          ParamType.String,
        ),
        'outdated': serializeParam(
          _outdated,
          ParamType.bool,
        ),
        'valid': serializeParam(
          _valid,
          ParamType.bool,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'altitude': serializeParam(
          _altitude,
          ParamType.int,
        ),
        'speed': serializeParam(
          _speed,
          ParamType.int,
        ),
        'course': serializeParam(
          _course,
          ParamType.int,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'accuracy': serializeParam(
          _accuracy,
          ParamType.int,
        ),
        'network': serializeParam(
          _network,
          ParamType.String,
        ),
        'geofenceIds': serializeParam(
          _geofenceIds,
          ParamType.String,
        ),
      }.withoutNulls;

  static PosicionesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PosicionesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        attributes: deserializeStructParam(
          data['attributes'],
          ParamType.DataStruct,
          false,
          structBuilder: AttributesStruct.fromSerializableMap,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.int,
          false,
        ),
        protocol: deserializeParam(
          data['protocol'],
          ParamType.String,
          false,
        ),
        serverTime: deserializeParam(
          data['serverTime'],
          ParamType.String,
          false,
        ),
        deviceTime: deserializeParam(
          data['deviceTime'],
          ParamType.String,
          false,
        ),
        fixTime: deserializeParam(
          data['fixTime'],
          ParamType.String,
          false,
        ),
        outdated: deserializeParam(
          data['outdated'],
          ParamType.bool,
          false,
        ),
        valid: deserializeParam(
          data['valid'],
          ParamType.bool,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        altitude: deserializeParam(
          data['altitude'],
          ParamType.int,
          false,
        ),
        speed: deserializeParam(
          data['speed'],
          ParamType.int,
          false,
        ),
        course: deserializeParam(
          data['course'],
          ParamType.int,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        accuracy: deserializeParam(
          data['accuracy'],
          ParamType.int,
          false,
        ),
        network: deserializeParam(
          data['network'],
          ParamType.String,
          false,
        ),
        geofenceIds: deserializeParam(
          data['geofenceIds'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PosicionesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PosicionesStruct &&
        id == other.id &&
        attributes == other.attributes &&
        deviceId == other.deviceId &&
        protocol == other.protocol &&
        serverTime == other.serverTime &&
        deviceTime == other.deviceTime &&
        fixTime == other.fixTime &&
        outdated == other.outdated &&
        valid == other.valid &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        altitude == other.altitude &&
        speed == other.speed &&
        course == other.course &&
        address == other.address &&
        accuracy == other.accuracy &&
        network == other.network &&
        geofenceIds == other.geofenceIds;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        attributes,
        deviceId,
        protocol,
        serverTime,
        deviceTime,
        fixTime,
        outdated,
        valid,
        latitude,
        longitude,
        altitude,
        speed,
        course,
        address,
        accuracy,
        network,
        geofenceIds
      ]);
}

PosicionesStruct createPosicionesStruct({
  int? id,
  AttributesStruct? attributes,
  int? deviceId,
  String? protocol,
  String? serverTime,
  String? deviceTime,
  String? fixTime,
  bool? outdated,
  bool? valid,
  double? latitude,
  double? longitude,
  int? altitude,
  int? speed,
  int? course,
  String? address,
  int? accuracy,
  String? network,
  String? geofenceIds,
}) =>
    PosicionesStruct(
      id: id,
      attributes: attributes ?? AttributesStruct(),
      deviceId: deviceId,
      protocol: protocol,
      serverTime: serverTime,
      deviceTime: deviceTime,
      fixTime: fixTime,
      outdated: outdated,
      valid: valid,
      latitude: latitude,
      longitude: longitude,
      altitude: altitude,
      speed: speed,
      course: course,
      address: address,
      accuracy: accuracy,
      network: network,
      geofenceIds: geofenceIds,
    );
