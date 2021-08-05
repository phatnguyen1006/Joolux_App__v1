class ILogin {
  final String username;
  final String password;

  ILogin({
    required this.username,
    required this.password,
  });
}

enum Gender {
  unknow,
  male,
  female,
}

class IRegister {
  final String username;
  final String password;
  // final String passwordConfirm;
  late Gender gender;

  IRegister({
    required this.username,
    required this.password,
    // required this.passwordConfirm,
    required this.gender,
  });
}
