import 'package:doctoe_appointment_app/core/theming/style.dart';
import 'package:doctoe_appointment_app/features/onboarding/widgets/docrot_logo_and_name.dart';
import 'package:doctoe_appointment_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctoe_appointment_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DoctorLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Doctor to get a new experinece",
                      style: TextStyles.font13GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h,),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
