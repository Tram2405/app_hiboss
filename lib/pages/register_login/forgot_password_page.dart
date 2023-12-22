import 'package:app_hiboss/components/appbar/appbar_login.dart';
import 'package:app_hiboss/components/buttons/button.dart';
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/components/text_form_field/hibos_password_field.dart';
import 'package:app_hiboss/pages/register_login/login_page.dart';
import 'package:app_hiboss/pages/register_login/widgets/label_text.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:app_hiboss/utils/validator.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  //button
  bool isInputComplete = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const AppBarLogin(title: 'Tạo mật khẩu mới của bạn', image: 'Assets.images.loginLogo',),
      body: Form(
        key: formKey,
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            children: [
              Text(
                'Nhập mật khẩu mới dưới đây để tiến hành tạo lại mật khẩu mới.',
                style: AppStyle.h14Normal.copyWith(color: AppColor.grey),
              ),
              const SizedBox(height: 80.0),
              const LabelText(label1: 'Mật khẩu mới'),
              const SizedBox(height: 10.0),
              TextFieldPassword(
                validator: Validator.passwordValidator,
                hintext: 'Nhập mật khẩu',
                controller: passwordController,
                onChanged: (_) {
                  updateInputState();
                },
              ),
              const SizedBox(height: 30.0),
              const LabelText(label1: 'Nhập lại mật khẩu '),
              const SizedBox(height: 10.0),
              TextFieldPassword(
                validator:
                    Validator.confirmPasswordValidator(passwordController.text),
                hintext: 'Nhập mật khẩu mới ',
                controller: retypePasswordController,
                onChanged: (_) {
                  updateInputState();
                },
              ),
              const SizedBox(height: 24.0),
              HbElevatedButton(
                text: 'Đăng Nhập',
                color: isInputComplete
                    ? AppColor.blue.withOpacity(0.98)
                    : Colors.white,
                textColor: isInputComplete ? AppColor.white : AppColor.blue,
                onPressed: () async {
                  if (formKey.currentState!.validate() == false) {
                    return;
                  }
                  isLoading = true;
                  setState(() {});
                  await Future.delayed(const Duration(milliseconds: 1000));
                  isLoading = false;
                  setState(() {});
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                isLoading: isLoading,
              ),
            ]),
      ),
    );
  }

  void updateInputState() {
    setState(() {
      isInputComplete = passwordController.text.isNotEmpty &&
          retypePasswordController.text.isNotEmpty;
    });
  }
}

// HbElevatedButton(  //button chính
//                 text: 'Đăng Nhập',
//                 color: isInputComplete
//                     ? AppColor.blue.withOpacity(0.98)
//                     : Colors.white,
//                 textColor: isInputComplete ? AppColor.white : AppColor.blue,
//                 onPressed: isInputComplete
//                     ? () async {
//                         isLoading = true;
//                         setState(() {});
//                         await Future.delayed(const Duration(milliseconds: 1000));
//                         isLoading = false;
//                         setState(() {});
//                         // ignore: use_build_context_synchronously
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => LoginPage(),
//                           ),
//                         );
//                       }
//                     : null,
//                 isLoading: isLoading,
//               ),