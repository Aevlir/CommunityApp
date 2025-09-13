class TestRegEx {
  static final RegExp email = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  static final RegExp passwordRegex = RegExp(
    r'^(?=.*[A-Z])[A-Za-z0-9!@#$&-]{8,}$',
  );

  static final RegExp uppercaseLetter = RegExp(r'[A-Z]');

  static final RegExp alphanumeric = RegExp(r'^[A-Za-z0-9!@#$&-]+$');

  static final RegExp passwordAllowedChars = RegExp(r'^[A-Za-z0-9!@#$&-]+$');
}
