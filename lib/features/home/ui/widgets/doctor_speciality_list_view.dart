import 'package:doctoe_appointment_app/core/helper/spacing.dart';
import 'package:doctoe_appointment_app/core/theming/colors.dart';
import 'package:doctoe_appointment_app/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context,index){
          return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ?  0 : 24.w 
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 40.h,
                      width: 40.w,
                      ),
                  ),
                  verticalSpace(8),
                   Text(
                    'Specialzation',
                    style: TextStyles.font12DarkBlueRegular
                  )
                ],
              ),
          );
        },

      ),
    );
  }
}