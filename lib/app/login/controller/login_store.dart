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
  String login = 'edvaldo.santana@experiencesolucoes.com.br';

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @action
  void setLogin(String value) => login = value;

  @observable
  String senha = '';

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get isLoginValid => RegExp(ConstsApi.VALIDAR_EMAIL).hasMatch(login);

  @computed
  bool get isSenhaValid => senha.length > 2;

  @computed
  bool get isformValid => isLoginValid && isSenhaValid;

  @action
  Future<void> getLogin(context) async {
    loading = true;
    ResponseApi response = await LoginApi.login(login, senha);
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
