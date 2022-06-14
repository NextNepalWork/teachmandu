import 'package:e_learning/model/auth_response.dart';
import 'package:e_learning/network/data_providers.dart';

abstract class AuthRepo {
  Future<AuthResponse> performLogin(String userName, String password);
}

class RealAUthRepo implements AuthRepo {
  final DataProvider _dataProvider = DataProvider();
  @override
  Future<AuthResponse> performLogin(String userName, String password) {
    return _dataProvider.performLogin(userName, password);
  }
}
