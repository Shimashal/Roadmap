import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

import '../../res/components/round_btn.dart';

class OtpMyPhone extends StatefulWidget {
  const OtpMyPhone({Key? key}) : super(key: key);
  static String verify = "";

  @override
  State<OtpMyPhone> createState() => _OtpMyPhoneState();
}

class _OtpMyPhoneState extends State<OtpMyPhone> {
  TextEditingController countryCodeController = TextEditingController();
  var phone = "";

  @override
  void initState() {
    // TODO: implement initState
    countryCodeController.text = "+92";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: AppColors.whiteColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/otpAuth.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 25,
              ),
              Text('Phone Verification',
                  style: Theme.of(context).textTheme.displayMedium),
              const SizedBox(
                height: 10,
              ),
              Text(
                'We need to register your phone number before getting started!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.grayColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryCodeController,
                        decoration: const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text(
                      "|",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: RoundButton(
                  loading: false,
                  onPress: () async {
                    try {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: countryCodeController.text + phone,
                        verificationCompleted:
                            (PhoneAuthCredential credentials) {},
                        verificationFailed: (FirebaseAuthException e) {
                          Fluttertoast.showToast(
                            backgroundColor: AppColors.primaryColor,
                            textColor: AppColors.primaryTextTextColor,
                            fontSize: 16,
                            msg: e.message ?? 'Verification failed',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                          );
                        },
                        codeSent: (String verificationId, int? resendToken) {
                          OtpMyPhone.verify = verificationId;
                          Navigator.pushNamed(context, RouteName.otpScreenTwo);
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } catch (e) {
                      Fluttertoast.showToast(
                        msg: 'Failed to send verification code',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                      );
                    }
                  },
                  color: AppColors.primaryColor,
                  title: 'Send the code',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
