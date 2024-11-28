// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceStruct extends BaseStruct {
  DeviceStruct({
    int? id,
    AttributesStruct? attributes,
    int? groupId,
    int? calendarId,
    String? name,
    String? uniqueId,
    String? status,
    String? lastUpdate,
    int? positionId,
    String? phone,
    String? model,
    String? contact,
    String? category,
    bool? disabled,
    String? expirationTime,
  })  : _id = id,
        _attributes = attributes,
        _groupId = groupId,
        _calendarId = calendarId,
        _name = name,
        _uniqueId = uniqueId,
        _status = status,
        _lastUpdate = lastUpdate,
        _positionId = positionId,
        _phone = phone,
        _model = model,
        _contact = contact,
        _category = category,
        _disabled = disabled,
        _expirationTime = expirationTime;

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

  // "groupId" field.
  int? _groupId;
  int get groupId => _groupId ?? 0;
  set groupId(int? val) => _groupId = val;

  void incrementGroupId(int amount) => groupId = groupId + amount;

  bool hasGroupId() => _groupId != null;

  // "calendarId" field.
  int? _calendarId;
  int get calendarId => _calendarId ?? 0;
  set calendarId(int? val) => _calendarId = val;

  void incrementCalendarId(int amount) => calendarId = calendarId + amount;

  bool hasCalendarId() => _calendarId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "uniqueId" field.
  String? _uniqueId;
  String get uniqueId => _uniqueId ?? '';
  set uniqueId(String? val) => _uniqueId = val;

  bool hasUniqueId() => _uniqueId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "lastUpdate" field.
  String? _lastUpdate;
  String get lastUpdate => _lastUpdate ?? '';
  set lastUpdate(String? val) => _lastUpdate = val;

  bool hasLastUpdate() => _lastUpdate != null;

  // "positionId" field.
  int? _positionId;
  int get positionId => _positionId ?? 0;
  set positionId(int? val) => _positionId = val;

  void incrementPositionId(int amount) => positionId = positionId + amount;

  bool hasPositionId() => _positionId != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  set contact(String? val) => _contact = val;

  bool hasContact() => _contact != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "disabled" field.
  bool? _disabled;
  bool get disabled => _disabled ?? false;
  set disabled(bool? val) => _disabled = val;

  bool hasDisabled() => _disabled != null;

  // "expirationTime" field.
  String? _expirationTime;
  String get expirationTime => _expirationTime ?? '';
  set expirationTime(String? val) => _expirationTime = val;

  bool hasExpirationTime() => _expirationTime != null;

  static DeviceStruct fromMap(Map<String, dynamic> data) => DeviceStruct(
        id: castToType<int>(data['id']),
        attributes: AttributesStruct.maybeFromMap(data['attributes']),
        groupId: castToType<int>(data['groupId']),
        calendarId: castToType<int>(data['calendarId']),
        name: data['name'] as String?,
        uniqueId: data['uniqueId'] as String?,
        status: data['status'] as String?,
        lastUpdate: data['lastUpdate'] as String?,
        positionId: castToType<int>(data['positionId']),
        phone: data['phone'] as String?,
        model: data['model'] as String?,
        contact: data['contact'] as String?,
        category: data['category'] as String?,
        disabled: data['disabled'] as bool?,
        expirationTime: data['expirationTime'] as String?,
      );

  static DeviceStruct? maybeFromMap(dynamic data) =>
      data is Map ? DeviceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'attributes': _attributes?.toMap(),
        'groupId': _groupId,
        'calendarId': _calendarId,
        'name': _name,
        'uniqueId': _uniqueId,
        'status': _status,
        'lastUpdate': _lastUpdate,
        'positionId': _positionId,
        'phone': _phone,
        'model': _model,
        'contact': _contact,
        'category': _category,
        'disabled': _disabled,
        'expirationTime': _expirationTime,
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
        'groupId': serializeParam(
          _groupId,
          ParamType.int,
        ),
        'calendarId': serializeParam(
          _calendarId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'uniqueId': serializeParam(
          _uniqueId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'lastUpdate': serializeParam(
          _lastUpdate,
          ParamType.String,
        ),
        'positionId': serializeParam(
          _positionId,
          ParamType.int,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'contact': serializeParam(
          _contact,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'disabled': serializeParam(
          _disabled,
          ParamType.bool,
        ),
        'expirationTime': serializeParam(
          _expirationTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceStruct(
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
        groupId: deserializeParam(
          data['groupId'],
          ParamType.int,
          false,
        ),
        calendarId: deserializeParam(
          data['calendarId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        uniqueId: deserializeParam(
          data['uniqueId'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        lastUpdate: deserializeParam(
          data['lastUpdate'],
          ParamType.String,
          false,
        ),
        positionId: deserializeParam(
          data['positionId'],
          ParamType.int,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        contact: deserializeParam(
          data['contact'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        disabled: deserializeParam(
          data['disabled'],
          ParamType.bool,
          false,
        ),
        expirationTime: deserializeParam(
          data['expirationTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceStruct &&
        id == other.id &&
        attributes == other.attributes &&
        groupId == other.groupId &&
        calendarId == other.calendarId &&
        name == other.name &&
        uniqueId == other.uniqueId &&
        status == other.status &&
        lastUpdate == other.lastUpdate &&
        positionId == other.positionId &&
        phone == other.phone &&
        model == other.model &&
        contact == other.contact &&
        category == other.category &&
        disabled == other.disabled &&
        expirationTime == other.expirationTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        attributes,
        groupId,
        calendarId,
        name,
        uniqueId,
        status,
        lastUpdate,
        positionId,
        phone,
        model,
        contact,
        category,
        disabled,
        expirationTime
      ]);
}

DeviceStruct createDeviceStruct({
  int? id,
  AttributesStruct? attributes,
  int? groupId,
  int? calendarId,
  String? name,
  String? uniqueId,
  String? status,
  String? lastUpdate,
  int? positionId,
  String? phone,
  String? model,
  String? contact,
  String? category,
  bool? disabled,
  String? expirationTime,
}) =>
    DeviceStruct(
      id: id,
      attributes: attributes ?? AttributesStruct(),
      groupId: groupId,
      calendarId: calendarId,
      name: name,
      uniqueId: uniqueId,
      status: status,
      lastUpdate: lastUpdate,
      positionId: positionId,
      phone: phone,
      model: model,
      contact: contact,
      category: category,
      disabled: disabled,
      expirationTime: expirationTime,
    );
