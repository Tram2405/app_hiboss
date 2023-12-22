import 'package:app_hiboss/components/appbar/appbar_login.dart';
import 'package:app_hiboss/components/buttons/button.dart';
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/components/text_form_field/hibos_password_field.dart';
import 'package:app_hiboss/components/text_form_field/hiboss_email_field.dart';
import 'package:app_hiboss/pages/register_login/forgot_password_page.dart';
import 'package:app_hiboss/pages/register_login/register_page.dart';
import 'package:app_hiboss/pages/register_login/widgets/logo.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:app_hiboss/utils/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  bool isloadingForgor = false;

  //button
  bool isInputComplete = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar:  const AppBarLogin(title: 'Đăng nhập vào Hi+BOSS', image: 'Assets.images.loginLogo',),
        body: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0)
                .copyWith(top: MediaQuery.of(context).padding.top + 8.0),
            children: [
              const Text('Địa chỉ Email', style: AppStyle.h16Normal),
              const SizedBox(height: 10.0),
              TextFieldEmail(
                validator: Validator.emailValidator,
                hintext: 'Email',
                controller: emailController,
                onChanged: (_) {
                  updateInputState();
                },
              ),
              const SizedBox(height: 20.0),
              const Text('Mật khẩu', style: AppStyle.h16Normal),
              const SizedBox(height: 10.0),
              TextFieldPassword(
                validator: Validator.passwordValidator,
                hintext: 'Password',
                controller: passwordController,
                onChanged: (_) {
                  updateInputState();
                },
              ),

              const SizedBox(height: 6.0),
              GestureDetector(
                  onTap: () async {
                    isloadingForgor = true;
                    setState(() {});
                    await Future.delayed(const Duration(milliseconds: 1000));

                    isloadingForgor = false;
                    setState(() {});
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: isloadingForgor
                          ? const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: SizedBox.square(
                                dimension: 20,
                                child: CircularProgressIndicator(
                                    color: AppColor.pink, strokeWidth: 2.2),
                              ),
                            )
                          : const Text('Bạn quên mật khẩu?'))),
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
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                isLoading: isLoading,
              ),
              const SizedBox(height: 16.0),

              // HiBossButton(
              //   label: 'Đăng Nhập',
              //   onPressed: () {},
              // ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text: 'Bạn chưa có tài khoản?',
                        style: AppStyle.h16Normal),
                    const WidgetSpan(child: SizedBox(width: 4.0)),
                    TextSpan(
                        text: 'Đăng ký',
                        style: AppStyle.h16Medium.copyWith(
                            fontWeight: FontWeight.w500, color: AppColor.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(PageTransition(
                                child: RegisterPage(),
                                type: PageTransitionType.rightToLeft));
                          }),
                  ],
                ),
              ),

              const SizedBox(height: 52.0),
              const Logo()
            ],
          ),
        ),
      ),
    );
  }

  void updateInputState() {
    setState(() {
      isInputComplete =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }
}
