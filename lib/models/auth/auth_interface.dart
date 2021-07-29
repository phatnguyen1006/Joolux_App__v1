class ILogin {
  final String email;
  final String password;

  ILogin({
    required this.email,
    required this.password,
  });
}

enum Gender {
  unknow,
  male,
  female,
}

class IRegister {
  final String email;
  final String password;
  // final String passwordConfirm;
  late Gender gender;

  IRegister({
    required this.email,
    required this.password,
    // required this.passwordConfirm,
    required this.gender,
  });
}
