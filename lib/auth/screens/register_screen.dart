import 'package:drivers_app/global/widgets/app_box.dart';
import 'package:drivers_app/global/widgets/app_elevated_button.dart';
import 'package:drivers_app/global/widgets/app_text.dart';
import 'package:drivers_app/global/widgets/app_text_field.dart';
import 'package:drivers_app/main/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/utils/app_global_functins.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            children: [
              const AppBox(height: 20),
              Image.asset('images/logo1.png'),
              const AppText('Register as a Driver', fontSize: 20),
              const AppBox(height: 20),
              ///////////////////////// name /////////////////////
              AppTextField(
                hint: 'name',
                controller: nameController,
                validator: (ste) {},
              ),
              const AppBox(height: 15),
              ///////////////////////// email /////////////////////
              AppTextField(
                hint: 'email',
                controller: emailController,
                inputType: TextInputType.emailAddress,
                validator: (ste) {},
              ),
              const AppBox(height: 15),
              ///////////////////////// phone /////////////////////
              AppTextField(
                hint: 'phone',
                inputType: TextInputType.phone,
                controller: phoneController,
                validator: (ste) {},
              ),
              const AppBox(height: 15),
              ///////////////////////// password /////////////////////
              AppTextField(
                hint: 'password',
                controller: passwordController,
                isSecure: true,
                validator: (ste) {},
                maxLine: 1,
              ),
              const AppBox(height: 15),

              // AppElevatedButton(
              //     text: 'asd',
              //     color: Colors.white,
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (c) => MainScreen()));
              //     }),
            ],
          ),
        ),
      ),
    );
  }
}
