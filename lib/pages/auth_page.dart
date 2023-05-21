import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart' hide Auth;
import 'package:project_kelompok_mobile/navbar.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';
import './home.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUserSignUp(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .signup(data.name, data.password);
      } catch (err) {
        print(err);
        return err.toString();
      }
      return null;
    });
  }

  Future<String?> _authUserLogin(LoginData data) {
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .login(data.name, data.password);
      } catch (err) {
        print(err);
        return err.toString();
      }
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'ReadMe',
      // logo: 'assets/images/ecorp-lightblue.png',
      onLogin: _authUserLogin,
      // onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => navbar(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
