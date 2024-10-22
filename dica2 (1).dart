import 'dart:io';

void main() {
  register();
  login();
}

String? registeredUsername;
String? registeredPassword;

void register() {
  while (true) {
    print("Masukkan Username: ");
    registeredUsername = stdin.readLineSync();

    if (registeredUsername == null ||
        registeredUsername!.length < 5 ||
        registeredUsername!.length > 20) {
      print('Username harus di antara 5 sampai 20 karakter');
      continue; 
    }

    if (registeredUsername!.contains(' ')) {
      print('Username tidak boleh mengandung spasi');
      continue;
    }

    print("Masukkan Password: ");
    registeredPassword = stdin.readLineSync();

    if (registeredPassword == null ||
        registeredPassword!.length < 8 ||
        registeredPassword!.length > 30) {
      print('Password harus di antara 8 sampai 30 karakter');
      continue;
    }

    print('REGISTER BERHASIL');
    break; 
  }
}

void login() {
  while (true) {
    print("Username: ");
    var loginUsername = stdin.readLineSync();
    print("Password: ");
    var loginPassword = stdin.readLineSync();

    if (loginUsername == registeredUsername &&
        loginPassword == registeredPassword) {
      print('LOGIN BERHASIL');
      break; 
    } else {
      print('USERNAME ATAU PASSWORD SALAH');
      continue; 
    }
  }
}