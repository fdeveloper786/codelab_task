import 'package:codeland_app/presentation/login_screen/controller/login_controller.dart';
import 'package:codeland_app/utils/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final LoginController loginController;
  final List<RichTextItem> items;


   const RichTextWidget({Key? key, required this.loginController,required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: items.map((item) {
          return TextSpan(
            text: '${item.label}: ',
            style: AppStyle.poppinsBlack12,
            children: [
              TextSpan(
                text: item.text,
                style: AppStyle.poppinsOrange12,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                  loginController.makePhoneCall(item.text);
                    // Handle onTap action for the item.text
                  },
              ),
               TextSpan(
                text: '\n',
                style:  AppStyle.poppinsBlack12
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class RichTextItem {
  final String label;
  final String text;

  const RichTextItem({required this.label, required this.text});
}
