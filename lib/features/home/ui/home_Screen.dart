import 'package:doctoe_appointment_app/core/helper/spacing.dart';
import 'package:doctoe_appointment_app/features/home/ui/widgets/doctor_list_view.dart';
import 'package:doctoe_appointment_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctoe_appointment_app/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctoe_appointment_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:  Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const HomeTopBar(),
               const DoctorsBlueContainer(),
               verticalSpace(24.h),
               const DoctorsSpecialitySeeAll(),
               verticalSpace(18),
               const DoctorsSpecialityListView(),
               verticalSpace(8),
               const DoctorsListView()
            ],
          ),
        ),
      ),
    );
  }
}