import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:maenbal/app/modules/profileEdit/views/profile_edit_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsList extends StatefulWidget {
  const SettingsList({super.key});

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  List<String> settings = [
    "Edit Profile",
    "Notifications",
    "Go To Website",
    "Settings",
  ];

  List<Icon> settingsic = [
    Icon(Icons.person, color: themeData.canvasColor, size: 20),
    Icon(Icons.notifications, color: themeData.canvasColor, size: 20),
    Icon(Icons.web, color: themeData.canvasColor, size: 20),
    Icon(Icons.settings, color: themeData.canvasColor, size: 20),
  ];

  String? nameProfile;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: settings.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          settings[index];
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (index == 0) {
                String? name = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileEditView();
                    },
                  ),
                );
                nameProfile = name;
                setState(() {});
              } else if (index == 1) {
                toast("Notifications");
              } else if (index == 2) {
                String url = 'https://maenbal.up.railway.app/';
                launch(url);
              } else if (index == 3) {
                toast("Settings");
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: themeData.primaryColor,
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0x00ffffff), width: 1),
                    ),
                    child: settingsic[index],
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 16),
                      child: Text(settings[index], style: boldTextStyle()),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,
                      color: themeData.primaryColor, size: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
