import 'package:doctoe_appointment_app/core/helper/extensions.dart';
import 'package:doctoe_appointment_app/core/routing/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/style.dart';


class DontHaveAccountText  extends StatelessWidget {
  const DontHaveAccountText ({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
