import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../view/verification_code_screen.dart';

class PhoneRepo{

   static Future signIn(BuildContext context, String phone)
  async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (AuthCredential credential) async {
          UserCredential result = await _auth.signInWithCredential(credential);
          Navigator.pop(context);

          User? user = result.user;

          if (user != null) {

          } else {
            debugPrint('User dosenot Exist');
            Fluttertoast.showToast(msg: 'User dosenot Exist');
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          Fluttertoast.showToast(msg: e.toString());

        },
        codeSent: (String verification, int? token,   ) {
          showDialog(
              context: context,
              builder: (context) {

                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                  return  VerificationCodeScreen(verification: verification,token: token);

                }
                ));
                return const Text('');
                //
                //  return AlertDialog(
                //
                //   title: const Text("Enter OTP"),
                //   content: Column(
                //     children: [
                //       Form(
                //         key: formKey,
                //         child: TextFormField(
                //           validator: (value){
                //             if(value!.isEmpty)
                //               {
                //                 return 'Please Enter the OTP';
                //               }
                //             return null;
                //           },
                //           keyboardType: TextInputType.number,
                //           controller: otpController,
                //           decoration: InputDecoration(
                //             fillColor: Colors.grey[200],
                //             filled: true,
                //
                //             border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.circular(20.r),
                //                 borderSide: const BorderSide(
                //                     width: 0,
                //                     style: BorderStyle.none
                //                 )
                //             ),
                //
                //
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                //   actions: [
                //     MyButton(
                //       text: 'Verify',
                //       callback: () async {
                //
                //         if (formKey.currentState!.validate()) {
                //
                //         }
                //         final code = otpController.text;
                //         AuthCredential credential =
                //             PhoneAuthProvider.credential(
                //                 verificationId: verification, smsCode: code);
                //         UserCredential result =
                //             await _auth.signInWithCredential(credential);
                //         User? user = result.user;
                //         if (user != null) {
                //           Navigator.push(context,
                //               MaterialPageRoute(builder: (context) {
                //             return const OnboardingScreen();
                //           }));
                //           debugPrint('Success');
                //           Fluttertoast.showToast(msg: 'Success');
                //         } else {
                //           Fluttertoast.showToast(msg: 'Some Error Found');
                //         }
                //       },
                //     ),
                //   ],
                // );
              });

        },
        codeAutoRetrievalTimeout: (id) {});
  }

  }

