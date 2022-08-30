// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device1 _$Device1FromJson(Map<String, dynamic> json) => Device1(
      DeviceId: json['DeviceId'] as String? ?? "noDeviceID",
      userId: json['userId'] as String? ?? "noUserID",
      switch1: json['switch1'] as bool? ?? false,
      switch2: json['switch2'] as bool? ?? false,
      switch3: json['switch3'] as bool? ?? false,
      switch4: json['switch4'] as bool? ?? false,
    );

Map<String, dynamic> _$Device1ToJson(Device1 instance) => <String, dynamic>{
      'userId': instance.userId,
      'DeviceId': instance.DeviceId,
      'switch1': instance.switch1,
      'switch2': instance.switch2,
      'switch3': instance.switch3,
      'switch4': instance.switch4,
    };
