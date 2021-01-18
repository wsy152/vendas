import 'package:mobx/mobx.dart';
import 'package:sales_telecom012021/app/login/model/const_api.dart';
import 'package:sales_telecom012021/app/login/model/loginApi.dart';
import 'package:sales_telecom012021/app/login/model/response_api.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  String _login = 'edvaldo.santana@experiencesolucoes.com.br';

  @action
  void setLogin(String value) => _login = value;

  @observable
  String _senha = '';

  @action
  void setSenha(String value) => _senha = value;

  @computed
  bool get isLoginValid => RegExp(ConstsApi.VALIDAR_EMAIL).hasMatch(_login);

  @computed
  bool get isSenhaValid => _senha.length > 2;

  // Login
  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @observable
  bool loggedInError = false;

  @computed
  Function get loginPressed =>
      (isLoginValid && isSenhaValid && !loading) ? getLogin : null;

  @observable
  ResponseApi response;

  @action
  void setResponse(ResponseApi value) => response = value;

  @action
  Future<void> getLogin() async {
    loading = true;
    loggedInError = false;
    loggedIn = false;

    response = await LoginApi.login(_login, _senha);
    if (response.ok) {
      loggedIn = true;
    } else {
      loggedInError = true;
    }
    loading = false;
  }
}
