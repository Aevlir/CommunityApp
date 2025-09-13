class AppRoute {
  final String name;
  final String path;

  const AppRoute(this.name, this.path);

  static const auth = AppRoute('/', '/');
  static const home = AppRoute('home', '/home');
  static const login = AppRoute('login', '/login');
  static const signUp = AppRoute('signUp', '/sign-up');
  static const signUpPassword = AppRoute('signUpPassword', '/sign-up-password');
}
