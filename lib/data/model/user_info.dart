import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
    String userId;
    String name;
    int donationPercentage;
    int point;
    int numOfSellingCoupons;
    int numOfCoupons;

    UserInfo({
        required this.userId,
        required this.name,
        required this.donationPercentage,
        required this.point,
        required this.numOfSellingCoupons,
        required this.numOfCoupons,
    });

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        userId: json["userId"],
        name: json["name"],
        donationPercentage: json["donationPercentage"],
        point: json["point"],
        numOfSellingCoupons: json["numOfSellingCoupons"],
        numOfCoupons: json["numOfCoupons"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "donationPercentage": donationPercentage,
        "point": point,
        "numOfSellingCoupons": numOfSellingCoupons,
        "numOfCoupons": numOfCoupons,
    };
}