
import 'dart:io';

import 'package:appointment_app_v2/ui/home/user/appointments_history/content/appointments_completed.dart';
import 'package:appointment_app_v2/ui/home/user/appointments_history/content/appointments_upcoming.dart';
import 'package:appointment_app_v2/ui/home/user/home/content/choose_service.dart';
import 'package:appointment_app_v2/utils/enums.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../style/general_style.dart';
import '../../../../../ui_items/my_app_bar.dart';
import '../../../../../ui_items/my_button.dart';
import '../../../../../ui_items/my_choose_professional_tile.dart';
import '../../../../../ui_items/my_label.dart';
import '../../../../../ui_items/my_responsive_layout.dart';
import '../../../../../ui_items/my_text_form_field.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/method_helper.dart';
import '../../../../../utils/validators.dart';

class ChooseProfessional extends ConsumerStatefulWidget {
  const ChooseProfessional({Key? key}): super(key: key);

  @override
  ChooseProfessionalState createState() => ChooseProfessionalState();
}

class ChooseProfessionalState extends ConsumerState<ChooseProfessional> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
          backgroundColor: grey50,
          resizeToAvoidBottomInset : true,
          appBar: MyAppBar(
            type: MyAppBarType.LEADING_ICON,
            leadingIcon: IconlyLight.arrow_left,
            backgroundColor: grey50,
            label: 'Choose Professional',
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          body: MyResponsiveLayout(mobileBody: mobileBody(), tabletBody: mobileBody(),)
      ),
    );
  }

  Widget mobileBody(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 24.h),
          separatorBuilder: (context, index) => SizedBox(height: 20.h,),
          itemCount: 7,
          itemBuilder: (context, index) {
            return MyChooseProfessionalTile(type: MyChooseProfessionalTileType.GENERAL,index: index,onTap: (){
              MethodHelper.transitionPage(context, widget, ChooseService(), PageNavigatorType.PUSH, PageTransitionType.rightToLeftJoined);
            });
          },
        )
    );
  }

}