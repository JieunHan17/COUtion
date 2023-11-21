import '../../data/datasource/datasource.dart';
import '../../data/model/donation_info.dart';

class DonationInfoRepository {
  final DataSource _dataSource = DataSource();

  Future<List<DonationInfo>> getDonationInfoList() {
    return _dataSource.getDonationInfoList();
  }
}