import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/profile_edit_controller.dart';

// ignore: must_be_immutable
class ProfileEditView extends GetView<ProfileEditController> {
  ProfileEditView({super.key});

  TextEditingController fullNameController =
      TextEditingController(text: "MAENBAL");
  TextEditingController contactNumberController =
      TextEditingController(text: "9845612337");
  TextEditingController emailController =
      TextEditingController(text: "maenbal@gmail.com");

  FocusNode fullNameFocusNode = FocusNode();
  FocusNode contactNumberFocusNode = FocusNode();
  FocusNode emailFocus = FocusNode();

  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Edit Profile",
          style: semiBoldText18.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 110),
              padding: const EdgeInsets.only(
                  top: 50, left: 16, right: 16, bottom: 16),
              decoration: boxDecorationWithShadow(
                backgroundColor: kColorScheme.surface,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Personal Information',
                        style: boldTextStyle(size: 18)),
                    16.height,
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.8), width: 0.5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Full Name', style: boldTextStyle(size: 14)),
                          const SizedBox(height: 8),
                          TextField(
                            controller: fullNameController,
                            obscureText: false,
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            onSubmitted: (value) {
                              FocusScope.of(context).requestFocus(emailFocus);
                            },
                            focusNode: fullNameFocusNode,
                            style: primaryTextStyle(),
                            decoration: InputDecoration(
                              fillColor: Colors.black.withOpacity(0.1),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                              hintText: "Enter your full name",
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              filled: true,
                              isDense: false,
                              contentPadding:
                                  const EdgeInsets.fromLTRB(16, 8, 12, 8),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text('Email', style: boldTextStyle(size: 14)),
                          const SizedBox(height: 8),
                          TextField(
                            controller: emailController,
                            obscureText: false,
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            onSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(contactNumberFocusNode);
                            },
                            focusNode: emailFocus,
                            style: primaryTextStyle(),
                            decoration: InputDecoration(
                              fillColor: Colors.black.withOpacity(0.1),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 1),
                              ),
                              hintText: "Enter your email",
                              hintStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              filled: true,
                              isDense: false,
                              contentPadding:
                                  const EdgeInsets.fromLTRB(16, 8, 12, 8),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    16.height,
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 220, left: 16, right: 16, bottom: 60),
                      child: MaterialButton(
                        onPressed: () {
                          name = fullNameController.text;
                          toast("Update Profile Success!");
                          finish(context, name);
                        },
                        color: themeData.primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        textColor: const Color(0xffffffff),
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width,
                        child: const Text("Continue",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.normal)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8, top: 24),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      color: themeData.primaryColor, shape: BoxShape.circle),
                  child: Image.asset("assets/images/profile-photo.png",
                      fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 16,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: themeData.primaryColor, shape: BoxShape.circle),
                    child:
                        const Icon(Icons.edit, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          ],
        ).paddingTop(60),
      ),
    );
  }
}
