import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static final routeName = 'login';

  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email = "", _password = "";

  //En todo método, para usar await se debe definir el método como async
  //Aquí se ponela función submit asyncs

  String _validateEmail(String email) {
    if (email.isNotEmpty &&
        email.contains("@") &&
        (email.contains("hotmail.com") ||
            email.contains("gmail.com") ||
            email.contains("unmsm.edu.pe"))) {
      _email = email;
      return null;
    }
    else
      return "Email inválido";
  }

  String _validatePassword (String password){
    if(password.isNotEmpty && password.length >6){
      _password = password;
      return null;
    }
    else
      return "Contraseña inválida";
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }


}
