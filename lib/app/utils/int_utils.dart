extension IntUtils on int {
  bool isSuccessCode() => this >= 200 && this < 300;

  bool isFailCode() => !isSuccessCode();
}
