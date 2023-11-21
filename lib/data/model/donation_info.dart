import 'dart:convert';

DonationInfo donationInfoFromJson(String str) => DonationInfo.fromJson(json.decode(str));

String donationInfoToJson(DonationInfo data) => json.encode(data.toJson());

class DonationInfo {
    String name;
    String description;

    DonationInfo({
        required this.name,
        required this.description,
    });

    factory DonationInfo.fromJson(Map<String, dynamic> json) => DonationInfo(
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
    };
}
