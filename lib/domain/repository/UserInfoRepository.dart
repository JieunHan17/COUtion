import '../../data/datasource/datasource.dart';
import '../../data/model/user_info.dart';

class UserInfoRepository {
  final DataSource _dataSource = DataSource();

  Future<List<UserInfo>> getUserInfoList() {
    return _dataSource.getUserInfoList();
  }
}