import 'package:app_hiboss/components/buttons/button.dart';
import 'package:app_hiboss/components/checkbox/hiboss_checkbox.dart';
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/components/text_form_field/hibos_password_field.dart';
import 'package:app_hiboss/components/text_form_field/hiboss_email_field.dart';
import 'package:app_hiboss/pages/register_login/login_page.dart';
import 'package:app_hiboss/pages/register_login/register_page.dart';
import 'package:app_hiboss/pages/register_login/widgets/label_text.dart';
import 'package:app_hiboss/pages/register_login/widgets/logo.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:app_hiboss/utils/validator.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isCheck = false;
  bool isloadingRegiter = false;
  bool isLoading = false;
  bool isInputComplete = false;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController =
      TextEditingController(); //mỗi ô phải tạo riêng
  TextEditingController retypePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24.0),
            const LabelText(label1: 'Họ và tên', label2: '*'),
            const SizedBox(height: 16),
            TextFieldEmail(validator: Validator.requiredValidator),
            const SizedBox(height: 16),
            const LabelText(label1: 'Email', label2: '*'),
            const SizedBox(height: 8),
            TextFieldEmail(validator: Validator.requiredValidator),
            const SizedBox(height: 16),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(label1: 'Ngày sinh', label2: '*'),
                    TextFieldEmail.small(
                      width: 160.0,
                    ),
                  ],
                ),
                SizedBox(width: 26),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(label1: 'Giới tính', label2: '*'),
                    TextFieldEmail.small(width: 156.0),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const LabelText(label1: 'Số điện thoại', label2: '*'),
            const SizedBox(height: 8),
            TextFieldEmail(validator: Validator.requiredValidator),
            const SizedBox(height: 16),
            const LabelText(label1: 'Mật khẩu', label2: '*'),
            const SizedBox(height: 8),
            TextFieldPassword(
                onChanged: (value) {},
                validator: Validator.passwordValidator,
                controller: passwordController),
            const SizedBox(height: 24),
            const LabelText(label1: 'Xác nhập mật khẩu', label2: '*'),
            const SizedBox(height: 8),
            TextFieldPassword(
                onChanged: (value) {},
                controller: retypePasswordController,
                validator: Validator.confirmPasswordValidator(
                    passwordController.text)),
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HiBossCheckBox(
                  onChanged: (_) {},
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Tôi đồng ý với',
                      style: AppStyle.h14Normal,
                      children: <TextSpan>[
                        TextSpan(
                            text: ' các điều khoản',
                            style: AppStyle.h14Normal
                                .copyWith(color: AppColor.blue)),
                        const TextSpan(text: ' của Hifiveplus'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: HbElevatedButton(
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
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LabelText(label1: 'Bạn có tài khoản?'),
                GestureDetector(
                    onTap: () async {
                      isloadingRegiter = true;
                      setState(() {});
                      await Future.delayed(const Duration(milliseconds: 1600));

                      isloadingRegiter = false;

                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                      setState(() {});
                    },
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: isloadingRegiter
                            ? const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: SizedBox.square(
                                  dimension: 20,
                                  child: CircularProgressIndicator(
                                      color: AppColor.blue, strokeWidth: 2.2),
                                ),
                              )
                            // ignore: prefer_const_constructors
                            : Text('Đăng nhập',
                                style: AppStyle.h16Medium
                                    .copyWith(color: AppColor.blue)))),
              ],
            ),
            const SizedBox(height: 36),
            const Column(
              children: [
                Align(alignment: Alignment.center, child: Logo()),
              ],
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
