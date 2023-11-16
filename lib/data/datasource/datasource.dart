import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/sale_info.dart';
import '../model/user_info.dart';

class DataSource {
  Future<List<UserInfo>> getUserInfoList() async {
    final response = await http.get(Uri.parse(
        'https://cfc32160-d826-4a35-afea-09537ed383b7.mock.pstmn.io/api/user/test01'));
    print('API response: ${response.body}');
    return jsonDecode(response.body)
        .map<UserInfo>((json) => UserInfo.fromJson(json))
        .toList();
  }

  Future<List<SaleInfo>> getSaleInfoList() async {
    final response = await http.get(Uri.parse(
        'https://cfc32160-d826-4a35-afea-09537ed383b7.mock.pstmn.io/api/sale'));
    print('API response: ${response.body}');
    return jsonDecode(response.body)
        .map<SaleInfo>((json) => SaleInfo.fromJson(json))
        .toList();
  }
}