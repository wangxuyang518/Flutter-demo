import 'package:json_annotation/json_annotation.dart';
// user.g.dart 将在我们运行生成命令后自动生成
part "UserModel.g.dart";
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class UserInfor {
  String userId;
  String userName;
  String userPassword;
  String userStatus;
  String userType;
  String name;
  String idcardNo;
  String policeNo;
  String sex;
  String nation;
  String hometown;
  String education;
  String officePhone;
  String cellularPhone;
  String email;
  String orgCode;
  String orgName;
  String position;
  String rank;
}
