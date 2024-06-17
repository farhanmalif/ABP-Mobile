import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:maenbal/app/modules/profile/controllers/profile_controller.dart';
import 'package:maenbal/app/routes/app_pages.dart';
import 'package:maenbal/app/shared/widgets/appbar_widget.dart';
import 'package:maenbal/app/shared/widgets/settingslist_widget.dart';
import 'package:nb_utils/nb_utils.dart';

// ignore: must_be_immutable
class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme.surface,
      appBar: CustomAppBar(
        title: 'Profile',
        isLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            fit: BoxFit.fitWidth,
            'assets/images/uefa.png',
          ),
        ),
        action: [
          SvgPicture.asset(
            'assets/images/notif.svg',
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 24, bottom: 8),
                  color: themeData.canvasColor,
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0.1),
                        child: Container(
                          height: 100,
                          width: 100,
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset("assets/images/profile-photo.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "MAENBAL",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: boldTextStyle(size: 18, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "maenbal@gmail.com",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: themeData.primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                16.height,
                const SettingsList(),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showConfirmDialogCustom(
                    primaryColor: themeData.primaryColor,
                    context,
                    title: 'Do you want to logout from the app?',
                    onAccept: (v) {
                      finish(context);
                      Get.offAllNamed(Routes.SPLASH);
                    },
                  );
                },
                child: Container(
                  // alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  padding: const EdgeInsets.only(left: 16),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: themeData.primaryColor,
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                    ),
                    border:
                        Border.all(color: const Color(0x00ffffff), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout,
                          color: themeData.canvasColor, size: 24),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Text(
                          "Logout",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: themeData.canvasColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
