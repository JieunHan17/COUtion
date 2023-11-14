import 'dart:convert';

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));

String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());

class SaleInfo {
    String cafeName;
    String sellerId;
    int sellerDonationPercentage;
    int numOfStamps;

    SaleInfo({
        required this.cafeName,
        required this.sellerId,
        required this.sellerDonationPercentage,
        required this.numOfStamps,
    });

    factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        cafeName: json["cafeName"],
        sellerId: json["sellerId"],
        sellerDonationPercentage: json["sellerDonationPercentage"],
        numOfStamps: json["numOfStamps"],
    );

    Map<String, dynamic> toJson() => {
        "cafeName": cafeName,
        "sellerId": sellerId,
        "sellerDonationPercentage": sellerDonationPercentage,
        "numOfStamps": numOfStamps,
    };
}