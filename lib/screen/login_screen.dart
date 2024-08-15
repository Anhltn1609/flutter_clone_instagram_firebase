import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  final password = TextEditingController();
  FocusNode password_F = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 96.w,
                height: 100.h,
              ),
              Center(
                child: SizedBox(
                    width: 200.w,
                    child: Image.asset('assets/images/Instagram_logo.png')),
              ),
              SizedBox(height: 120.h),
              TextFieldWidget(
                controller: email,
                focusNode: email_F,
                icon: Icons.email,
                type: 'Email',
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                controller: password,
                icon: Icons.lock,
                type: 'Password',
                focusNode: password_F,
              ),
              SizedBox(
                height: 10.h,
              ),
              ForgotWidget(),
              SizedBox(height: 10.h),
              Login(),
              SizedBox(height: 10.h),
              Have()
            ],
          ),
        ),
      ),
    );
  }

  Padding Have() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Don\'t have account   ',
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.grey,
            ),
          ),
          Text(
            'Sign up',
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget Login() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          'Log in',
          style: TextStyle(
            fontSize: 23.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget ForgotWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        'Forgot your password?',
        style: TextStyle(
            fontSize: 13.sp, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget TextFieldWidget({
    required TextEditingController controller,
    required IconData icon,
    required String type,
    required FocusNode focusNode,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
              hintText: type,
              prefixIcon: Icon(
                icon,
                color: focusNode.hasFocus ? Colors.black : Colors.grey,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(color: Colors.grey, width: 2.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
                borderSide: BorderSide(color: Colors.black, width: 2.w),
              )),
        ),
      ),
    );
  }
}
