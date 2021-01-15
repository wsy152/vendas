class ResponseApi<T> {
  bool ok;
  String msg;
  T result;

  ResponseApi.ok(this.result) {
    ok = true;
  }

  ResponseApi.error(this.msg) {
    ok = false;
  }
}
