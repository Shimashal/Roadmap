// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/utils/utils.dart';
import 'package:map_app_task/view/login/header.dart';
import 'package:map_app_task/view_model/signup/signupcontroller.dart';
import 'package:provider/provider.dart';

import '../../res/components/input_text_field.dart';
import '../../res/components/round_btn.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final userNameFocusNode = FocusNode();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  final emailFocusNode = FocusNode();
  final confirmPassFocusNode = FocusNode();
  final passFocusNode = FocusNode();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    userNameController.dispose();
    userNameFocusNode.dispose();
    passController.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
    confirmPassFocusNode.dispose();
    confirmPassController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.8;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 18),
          child: ChangeNotifierProvider(
            create: (_) => SignUpController(),
            child:
                Consumer<SignUpController>(builder: (context, provider, child) {
              return Column(
                children:<Widget> [
                  HeaderContainer("Signup"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    
                    child: Form(
                      key: formkey,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.05, ),
                        child: Column(
                          children: [
                            //Username
                            InputField(
                              hint: 'Username',
                              myController: userNameController,
                              focusNode: userNameFocusNode,
                              onFiledSubmittedValue: (value) {},
                              onValidator: (value) {
                                return value.isEmpty ? 'Enter username' : null;
                              },
                              keyBoardType: TextInputType.text,
                              obscureText: false,
                              prefixIcon: Icons.person,
                            ),
                            SizedBox(height: height * 0.001),
                            //Email
                            
                            InputField(
                              hint: 'Email',
                              myController: emailController,
                              focusNode: emailFocusNode,
                              onFiledSubmittedValue: (value) {
                                Utils.fieldFocus(
                                    context, emailFocusNode, passFocusNode);
                              },
                              onValidator: (value) {
                                return value.isEmpty ? 'Enter email' : null;
                              },
                              keyBoardType: TextInputType.emailAddress,
                              obscureText: false,
                              prefixIcon: Icons.email,
                            ),
                            
                            SizedBox(height: height * 0.001),
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
                            SizedBox(height: height * 0.01),
                            
                            InputField(
                              hint: 'Confirm Password',
                              myController: confirmPassController,
                              focusNode: confirmPassFocusNode,
                              onFiledSubmittedValue: (value) {},
                              onValidator: (value) {
                                return value.isEmpty
                                    ? 'Password do not match'
                                    : null;
                                // return provider.validatePasswordMatch(value);
                              },
                              keyBoardType: TextInputType.text,
                              obscureText: true,
                              prefixIcon: Icons.lock,
                            ),
                             SizedBox(height: height * 0.001),
                  RoundButton(
                    title: 'SignUp',
                    loading: provider.loading,
                    onPress: () {
                      if (formkey.currentState!.validate()) {
                        if (confirmPassController.text ==
                            passController.text) {
                          provider.signup(
                            context,
                            userNameController.text.trim(),
                            emailController.text.trim(),
                            passController.text.trim(),
                            confirmPassController.text.trim(),
                          );
                        } else {
                          Utils.toastMessage('Passwords do not match');
                        }
                      }
                    },
                  ),
      
                  
                  SizedBox(
                    height: height * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.loginView);
                    },
                    child: Center(
                      child: Text.rich(TextSpan(
                        text: "Already have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 15),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
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
                  ),
                 
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

