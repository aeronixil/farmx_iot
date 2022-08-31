import "package:json_annotation/json_annotation.dart";
part 'models.g.dart';

@JsonSerializable()
class Device1 {
  final String userId;
  // ignore: non_constant_identifier_names
  final String DeviceId;
  final bool switch1, switch2, switch3, switch4;

  Device1({
    // ignore: non_constant_identifier_names
    this.DeviceId = "noDeviceID",
    this.userId = "noUserID",
    this.switch1 = false,
    this.switch2 = false,
    this.switch3 = false,
    this.switch4 = false,
  });

  factory Device1.fromJson(Map<String, dynamic> json) => _$Device1FromJson(json);

  Map<String, dynamic> toJson() => _$Device1ToJson(this);
}
