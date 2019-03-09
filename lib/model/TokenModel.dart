import 'package:json_annotation/json_annotation.dart'; 
  
part 'TokenModel.g.dart';


@JsonSerializable()
  class TokenModel{

  @JsonKey(name: 'access_token')
  String accessToken;

  @JsonKey(name: 'token_type')
  String tokenType;

  @JsonKey(name: 'refresh_token')
  String refreshToken;

  @JsonKey(name: 'expires_in')
  int expiresIn;

  @JsonKey(name: 'scope')
  String scope;
  TokenModel(this.accessToken,this.tokenType,this.refreshToken,this.expiresIn,this.scope,);

  factory TokenModel.fromJson(Map<String, dynamic> srcJson) => _$TokenModelFromJson(srcJson);


}
