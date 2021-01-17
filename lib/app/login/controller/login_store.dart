import 'package:mobx/mobx.dart';
import 'package:sales_telecom012021/app/home/view/components/home_page.dart';
import 'package:sales_telecom012021/app/login/model/const_api.dart';
import 'package:sales_telecom012021/app/login/model/loginApi.dart';
import 'package:sales_telecom012021/app/login/model/response_api.dart';
import 'package:sales_telecom012021/global/function/alert.dart';
import 'package:sales_telecom012021/global/function/myNav.dart';
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

  // @computed
  // bool get isformValid => isLoginValid && isSenhaValid;

  // Login
  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @computed
  Function get loginPressed =>
      (isLoginValid && isSenhaValid && !loading) ? getLogin : null;

  @action
  Future<void> getLogin(context) async {
    loading = true;
    ResponseApi response = await LoginApi.login(_login, _senha);
    if (response.ok) {
      push(
        context,
        HomePage(),
        replace: false,
      );
      loggedIn = true;
    } else {
      alert(context, response.msg);
    }
    loading = false;
  }
}
