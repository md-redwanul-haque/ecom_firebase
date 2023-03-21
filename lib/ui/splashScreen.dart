import 'dart:async';

import 'package:ecom_firebase/const/AppColors.dart';
import 'package:ecom_firebase/ui/registrationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loginScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(seconds: 3),()=>Navigator.push(context, CupertinoPageRoute(builder:(_)=>RegistrationScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(child: Text("E-Commerce",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 44.sp),)),
          SizedBox(height: 10.h,),
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
