

import 'package:fitness/constants/app_bar.dart';
import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/constants/app_textStyle.dart';
import 'package:fitness/screens/log/firebase.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Login"),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 223, 233, 243),
        child: Form(
          key: _formkey,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !isLogin
                    ? TextFormField(
                        key: const ValueKey('username'),
                        decoration:
                            const InputDecoration(hintText: "Enter Username"),
                        validator: (value) {
                          if (value.toString().length < 3) {
                            return 'Username is so small';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            username = value!;
                          });
                        },
                      )
                    : Container(),
                TextFormField(
                  key: const ValueKey('email'),
                  decoration: const InputDecoration(hintText: "Enter Email"),
                  validator: (value) {
                    if (!(value.toString().contains('@'))) {
                      return 'Invalid Email';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  key: const ValueKey('password'),
                  decoration: const InputDecoration(hintText: "Enter Password"),
                  validator: (value) {
                    if (value.toString().length < 6) {
                      return 'Password is so small';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      isLogin
                          ? FireBaseAuth.signin(email, password)
                          : FireBaseAuth.signup(email, password);
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration:
                          const BoxDecoration(color: AppColors.buttonColor,borderRadius: BorderRadius.all(Radius.circular(30))),
                      child:Center( child:  isLogin ? Text('Login',style: cardText(),) : Text('Sign up',style: cardText())),
                       ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: isLogin
                        ? const Text("Don't have an account? Signup",style: TextStyle(color: Colors.black,))
                        : const Text('Already Signed Up? Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
