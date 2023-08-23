import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/res/components/round_btn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/OTP_Auth/otp_auth.dart';
import 'package:pinput/pinput.dart';

class AuthotpScreen extends StatefulWidget {
  const AuthotpScreen({ Key? key});

  @override
  State<AuthotpScreen> createState() => _AuthotpScreenState();
}

class _AuthotpScreenState extends State<AuthotpScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final DatabaseReference _userRef = FirebaseDatabase.instance.reference().child('User');
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: AppColors.grayColor),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.black),
    );
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: AppColors.primaryColor,
      ),
    );

    var code = "";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: AppColors.whiteColor,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/otpAuth.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Phone Verification',
                style: Theme.of(context).textTheme.displayMedium,
              ),
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
              Pinput(
                length: 6,
                showCursor: true,
                onChanged: (value) {
                  code= value;
                },
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme:submittedPinTheme ,
                // validator: (s){
                //   return s== '2222' ? null :'Pin is incorrect';
                // },
                // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                // showCursor: true,
                // onCompleted: (pin) => print(pin),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: RoundButton(
                  loading: false,
                  onPress: () async {
                    try {
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                        verificationId: OtpMyPhone.verify,
                        smsCode: code,
                      );
                      await auth.signInWithCredential(credential);
                      savePhoneNumber(_phoneNumberController.text);
                      Navigator.pushNamed(context, RouteName.HomePageScreen);
                    } catch (e) {
                      print('Wrong OTP');
                    }
                  },
                  color: AppColors.primaryColor,
                  title: 'Verify Phone Number',
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, RouteName.otpPhoneScreen);
                    },
                    child: Text(
                      'Edit Phone Number?',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void savePhoneNumber(String phoneNumber) {
    final currentUser = auth.currentUser;
    if (currentUser != null) {
      final uid = currentUser.uid;
      _userRef.child(uid).child('phone').set(phoneNumber);
    }
  }
}
