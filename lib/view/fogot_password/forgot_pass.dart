// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/input_text_field.dart';
import 'package:map_app_task/view_model/forgot_password/forgot_password_controller.dart';
import 'package:provider/provider.dart';
import '../../res/components/round_btn.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();

    emailFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  'Enter your Email address to recover your password.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Form(
                  key: formkey,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.06, bottom: height * 0.01),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    fontSize: 18,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: height * 0.01),
                        InputField(
                          hint: '',
                          myController: emailController,
                          focusNode: emailFocusNode,
                          onFiledSubmittedValue: (value) {},
                          onValidator: (value) {
                            return value.isEmpty ? 'Enter email' : null;
                          },
                          keyBoardType: TextInputType.emailAddress,
                          obscureText: false,
                        ),
                        SizedBox(height: height * 0.01),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ChangeNotifierProvider(
                  create: (_) => ForgotPassController(),
                  child: Consumer<ForgotPassController>(
                    builder: (context, provider, child) {
                      return RoundButton(
                        title: 'Recover',
                        loading: false,
                        onPress: () {
                          if (formkey.currentState!.validate()) {
                            provider.forgotPassword(context, emailController.text);
                              
                          }
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
