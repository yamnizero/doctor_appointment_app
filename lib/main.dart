import 'package:doctoe_appointment_app/core/di/dependency_injection.dart';
import 'package:doctoe_appointment_app/core/routing/app_routers.dart';
import 'package:doctoe_appointment_app/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp( DoctorApp(
    appRouter: AppRouter(),
  ));
}
