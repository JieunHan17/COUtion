import 'dart:convert';

DonationInfo donationInfoFromJson(String str) => DonationInfo.fromJson(json.decode(str));

String donationInfoToJson(DonationInfo data) => json.encode(data.toJson());

class DonationInfo {
    String name;
    String description;
    String logo;

    DonationInfo({
        required this.name,
        required this.description,
        required this.logo
    });

    factory DonationInfo.fromJson(Map<String, dynamic> json) => DonationInfo(
        name: json["name"],
        description: json["description"],
        logo: json["logo"]
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "logo": logo
    };
}
