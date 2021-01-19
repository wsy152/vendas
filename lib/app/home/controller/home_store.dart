import 'package:mobx/mobx.dart';
import 'package:sales_telecom012021/app/login/model/usuario_model.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  Map<String, String> headers;

  @observable
  UsuariosModel user;

  @action
  _header(user) {
    headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${user.payload.token}'
    };
  }
}
