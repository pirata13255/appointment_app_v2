
import 'package:appointment_app_v2/utils/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../style/general_style.dart';
import '../../../../../ui_items/my_appointment_tile.dart';
import '../../../../../ui_items/my_responsive_layout.dart';

class AppointmentsCancelled extends ConsumerStatefulWidget {
  const AppointmentsCancelled({Key? key}): super(key: key);

  @override
  AppointmentsHistoryState createState() => AppointmentsHistoryState();
}

class AppointmentsHistoryState extends ConsumerState<AppointmentsCancelled> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyResponsiveLayout(mobileBody: mobileBody(), tabletBody: mobileBody());
  }

  Widget mobileBody(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          separatorBuilder: (context, index) => SizedBox(height: 20.h),
          itemCount: 7,
          itemBuilder: (context, index) {
            return MyAppointmentTile(type: MyAppointmentTileType.CANCELLED,index: index);

          },
        )
    );
  }

}