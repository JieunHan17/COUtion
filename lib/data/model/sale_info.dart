import 'dart:convert';

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));

String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());

class SaleInfo {
    String cafeName;
    String sellerId;
    int sellerDonationPercentage;
    int numOfStamps;
    String imageUrl;

    SaleInfo({
        required this.cafeName,
        required this.sellerId,
        required this.sellerDonationPercentage,
        required this.numOfStamps,
        required this.imageUrl
    });

    factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        cafeName: json["cafeName"],
        sellerId: json["sellerId"],
        sellerDonationPercentage: json["sellerDonationPercentage"],
        numOfStamps: json["numOfStamps"],
        imageUrl: json['imageUrl']
    );

    Map<String, dynamic> toJson() => {
        "cafeName": cafeName,
        "sellerId": sellerId,
        "sellerDonationPercentage": sellerDonationPercentage,
        "numOfStamps": numOfStamps,
        "imageUrl": imageUrl
    };
}