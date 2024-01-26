import 'package:doctoe_appointment_app/core/helper/extensions.dart';
import 'package:doctoe_appointment_app/core/routing/routes.dart';
import 'package:doctoe_appointment_app/core/theming/colors.dart';
import 'package:doctoe_appointment_app/core/theming/style.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue,),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity,52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
        ),
      ),
       child: Text(
        'Get Started',
        style: TextStyles.font16Whitemedium,
       ),
       );
  }
}
