import 'package:app_hiboss/components/buttons/button.dart';
import 'package:app_hiboss/components/checkbox/hiboss_checkbox.dart';
import 'package:app_hiboss/components/constants/style.dart';
import 'package:app_hiboss/components/text_form_field/hibos_password_field.dart';
import 'package:app_hiboss/components/text_form_field/hiboss_drop.dart';
import 'package:app_hiboss/components/text_form_field/hiboss_email_field.dart';
import 'package:app_hiboss/gen/assets.gen.dart';
import 'package:app_hiboss/pages/register_login/login_page.dart';
import 'package:app_hiboss/pages/register_login/register_page.dart';
import 'package:app_hiboss/pages/register_login/widgets/label_text.dart';
import 'package:app_hiboss/pages/register_login/widgets/logo.dart';
import 'package:app_hiboss/resources/app_color.dart';
import 'package:app_hiboss/utils/validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:page_transition/page_transition.dart';

class Screen_1 extends StatefulWidget {
  const Screen_1({super.key});

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  List items = ['lựa chọn 1', 'lựa chọn 2', 'lựa chọn 3'];
  bool isLoading = false;
  bool isInputComplete = false;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24.0),
          const LabelText(label1: 'Họ và tên', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldEmail(
            validator: Validator.requiredValidator,
          ),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Số điện thoại', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Email', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Tên công ty', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Mô tả công ty'),
          const SizedBox(height: 10.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Website công ty'),
          const SizedBox(height: 10.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Địa chỉ', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Lĩnh vực kinh doanh', label2: '*'),
          const SizedBox(height: 10.0),
          HiBossDropFormField(
              // Minh
              selected: 'lựa chọn 1',
              onChanged: (value) {
                // print(value);
              },
              items: List.generate(
                items.length,
                (index) => DropdownMenuItem(
                    value: items[index], child: Text(items[index])),
              )),
          const SizedBox(height: 16.0),
          Row(
            children: [
              HiBossCheckBox(onChanged: (value) {}),
              const SizedBox(width: 12.0),
              // ignore: prefer_const_constructors
              Text('Hộ kinh doanh cá thể', style: AppStyle.h16Normal),
            ],
          ),
          const SizedBox(height: 20.0),
          const LabelText(label1: 'Mã số doanh nghiệp', label2: '*'),
          const SizedBox(height: 12.0),
          TextFieldEmail(validator: Validator.requiredValidator),
          const SizedBox(height: 16.0),
          GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(Assets.images.addImgaebutton)),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Mật khẩu', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldPassword(
              onChanged: (value) {},
              validator: Validator.passwordValidator,
              controller: passwordController),
          const SizedBox(height: 16.0),
          const LabelText(label1: 'Xác nhận mật khẩu', label2: '*'),
          const SizedBox(height: 10.0),
          TextFieldPassword(
              onChanged: (value) {},
              controller: retypePasswordController,
              validator:
                  Validator.confirmPasswordValidator(passwordController.text)),
          const SizedBox(height: 24.0),
          Row(
            children: [
              HiBossCheckBox(
                onChanged: (value) {},
              ),
              const SizedBox(width: 12.0),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Tôi đồng ý với',
                      style: AppStyle.h14Normal,
                    ),
                    TextSpan(
                        text: ' các điều khoản ',
                        style:
                            AppStyle.h14Normal.copyWith(color: AppColor.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    const TextSpan(
                        text: 'của Hifiveplus', style: AppStyle.h14Normal),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
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
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: 'Bạn đã có tài khoản?', style: AppStyle.h16Normal),
                  // const WidgetSpan(child: SizedBox(width: 4.0)),
                  TextSpan(
                      text: ' Đăng nhập',
                      style: AppStyle.h16Medium.copyWith(color: AppColor.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushAndRemoveUntil(
                              PageTransition(
                                  child: LoginPage(),
                                  type:
                                      PageTransitionType //chạy từ trái sang phải vào màn hình khác
                                          .leftToRight),
                              (route) => false);
                        }),
                ],
              ),
            ),
          ),
          const SizedBox(height: 52.0),
          const Align(alignment: Alignment.center, child: Logo()),
          // const SizedBox(height: 52.0),
        ],
      ),
    );
  }
}
