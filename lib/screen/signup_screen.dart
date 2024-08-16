import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback show;
  const SignupScreen({required this.show, super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  final password = TextEditingController();
  FocusNode password_F = FocusNode();
  final username = TextEditingController();
  FocusNode username_F = FocusNode();
  final bio = TextEditingController();
  FocusNode bio_F = FocusNode();
  final passwordConfirm = TextEditingController();
  FocusNode passwordConfirm_F = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 96.w,
                height: 30.h,
              ),
              Center(
                child: SizedBox(
                    width: 200.w,
                    child: Image.asset('assets/images/Instagram_logo.png')),
              ),
              SizedBox(height: 50.h),
              Center(
                child: CircleAvatar(
                  radius: 34.r,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: AssetImage('assets/images/avt_data.jpg'),
                ),
              ),
              SizedBox(height: 30.h),
              TextFieldWidget(
                controller: email,
                focusNode: email_F,
                icon: Icons.email,
                type: 'Email',
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                controller: username,
                icon: Icons.person,
                type: 'Username',
                focusNode: username_F,
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                controller: bio,
                icon: Icons.abc,
                type: 'Bio',
                focusNode: bio_F,
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                controller: password,
                icon: Icons.lock,
                type: 'Password',
                focusNode: password_F,
              ),
              SizedBox(height: 15.h),
              TextFieldWidget(
                controller: passwordConfirm,
                icon: Icons.lock,
                type: 'Password',
                focusNode: passwordConfirm_F,
              ),
              SizedBox(height: 20.h),
              SignUp(),
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
            'Do have account   ',
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SignUp() {
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
          'Sign Up',
          style: TextStyle(
            fontSize: 23.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
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
