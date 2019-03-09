// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfor _$UserInforFromJson(Map<String, dynamic> json) {
  return UserInfor()
    ..userId = json['userId'] as String
    ..userName = json['userName'] as String
    ..userPassword = json['userPassword'] as String
    ..userStatus = json['userStatus'] as String
    ..userType = json['userType'] as String
    ..name = json['name'] as String
    ..idcardNo = json['idcardNo'] as String
    ..policeNo = json['policeNo'] as String
    ..sex = json['sex'] as String
    ..nation = json['nation'] as String
    ..hometown = json['hometown'] as String
    ..education = json['education'] as String
    ..officePhone = json['officePhone'] as String
    ..cellularPhone = json['cellularPhone'] as String
    ..email = json['email'] as String
    ..orgCode = json['orgCode'] as String
    ..orgName = json['orgName'] as String
    ..position = json['position'] as String
    ..rank = json['rank'] as String;
}

Map<String, dynamic> _$UserInforToJson(UserInfor instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userPassword': instance.userPassword,
      'userStatus': instance.userStatus,
      'userType': instance.userType,
      'name': instance.name,
      'idcardNo': instance.idcardNo,
      'policeNo': instance.policeNo,
      'sex': instance.sex,
      'nation': instance.nation,
      'hometown': instance.hometown,
      'education': instance.education,
      'officePhone': instance.officePhone,
      'cellularPhone': instance.cellularPhone,
      'email': instance.email,
      'orgCode': instance.orgCode,
      'orgName': instance.orgName,
      'position': instance.position,
      'rank': instance.rank
    };
