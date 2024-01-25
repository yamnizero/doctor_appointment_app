import 'package:doctoe_appointment_app/core/routing/app_routers.dart';
import 'package:doctoe_appointment_app/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( DoctorApp(
    appRouter: AppRouter(),
  ));
}
