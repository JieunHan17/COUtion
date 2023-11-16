import '../../data/datasource/datasource.dart';
import '../../data/model/sale_info.dart';

class SaleInfoRepository {
  final DataSource _dataSource = DataSource();

  Future<List<SaleInfo>> getSaleInfoList() {
    return _dataSource.getSaleInfoList();
  }
}