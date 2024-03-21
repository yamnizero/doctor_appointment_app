import 'package:doctoe_appointment_app/core/di/dependency_injection.dart';
import 'package:doctoe_appointment_app/core/routing/app_routers.dart';
import 'package:doctoe_appointment_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp( DoctorApp(
    appRouter: AppRouter(),
  ));
}
