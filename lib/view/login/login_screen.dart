// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/input_text_field.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view_model/login/login_controller.dart';
import 'package:provider/provider.dart';

import '../../res/components/round_btn.dart';
import 'header.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passFocusNode = FocusNode();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.3;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: <Widget>[
              HeaderContainer("Login"),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Form(
                        key: formkey,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.1, bottom: height * 0.01),
                          child: Column(
                            children: [
                              SizedBox(height: height * 0.01),
                              InputField(
                                hint: 'Email',
                                myController: emailController,
                                focusNode: emailFocusNode,
                                onFiledSubmittedValue: (value) {},
                                onValidator: (value) {
                                  return value.isEmpty ? 'Enter email' : null;
                                },
                                keyBoardType: TextInputType.emailAddress,
                                obscureText: false,
                                showPasswordToggle: false,
                                prefixIcon: Icons.email,
                              ),
                              SizedBox(height: height * 0.01),
                              InputField(
                                hint: 'Password',
                                myController: passController,
                                focusNode: passFocusNode,
                                onFiledSubmittedValue: (value) {},
                                onValidator: (value) {
                                  return value.isEmpty ? 'Enter password' : null;
                                },
                                keyBoardType: TextInputType.text,
                                obscureText: true,
                                prefixIcon: Icons.lock,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RouteName.forgotPassScreen);
                          },
                          child: Text(
                            "Forgot Password",
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontSize: 13,
                                      decoration: TextDecoration.underline,
                                    ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ChangeNotifierProvider(
                        create: (_) => LoginController(),
                        child: Consumer<LoginController>(
                          builder: (context, provider, child) {
                            return RoundButton(
                              title: 'Login',
                              loading: false,
                              onPress: () {
                                if (formkey.currentState!.validate()) {
                                  provider.login(context, emailController.text,
                                      passController.text);
                                }
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.signUpScreen);
                        },
                        child: Center(
                          child: Text.rich(TextSpan(
                            text: "Don't have an account?",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontSize: 15),
                            children: [
                              TextSpan(
                                text: "Sign up",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      fontSize: 15,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
