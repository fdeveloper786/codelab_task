import 'package:codeland_app/presentation/login_screen/controller/login_controller.dart';
import 'package:codeland_app/utils/app_style.dart';
import 'package:codeland_app/utils/color_utils.dart';
import 'package:codeland_app/utils/common_strings.dart';
import 'package:codeland_app/utils/size_utils.dart';
import 'package:codeland_app/widgets/custom_button.dart';
import 'package:codeland_app/widgets/custom_textformfield.dart';
import 'package:codeland_app/widgets/rich_text_widget.dart';
import 'package:flutter/material.dart';


class LoginFormSection extends StatelessWidget {
  final LoginController loginController;

  const LoginFormSection({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginController.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: loginController.usernameController,
            hintText: userNameLbl,
            hintStyle: AppStyle.poppinsGrey16,
            errorText: loginController.usernameError.value.isNotEmpty
                ? loginController.usernameError.value
                : null,
            validator: loginController.usernameValidator,
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            controller: loginController.passwordController,
            hintText: passwordLbl,
            hintStyle: AppStyle.poppinsGrey16,
            errorText: loginController.passwordError.value.isNotEmpty
                ? loginController.passwordError.value
                : null,
            validator: loginController.passwordValidator,
          ),
          const SizedBox(height: 20),
          CustomButton(
            label: loginLbl,
            buttonHeight: size.height * 0.06,
            buttonWidth: size.width,
            buttonColor: orange,
            shadows: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 2, // Spread radius
                blurRadius: 5, // Blur radius
                offset: const Offset(0, 4), // Offset in the y-axis direction
              ),
            ],
            onTap: () async {
              loginController.login();
            },
            radiusCircle: 10.0,
            textStyle: AppStyle.poppinsWhite24,
          ),
          const SizedBox(height: 20),
          RichTextWidget(
            loginController: loginController,
            items: const [
              RichTextItem(label: forAssistanceLbl, text: ''),
              RichTextItem(label: englishKarnTelgLbl, text: number1Lbl),
              RichTextItem(label: englishKarnHindiLbl, text: number2Lbl),
            ],
          ),
        ],
      ),
    );
  }
}
