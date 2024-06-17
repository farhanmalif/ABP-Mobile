import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:maenbal/app/routes/app_pages.dart';
import 'package:maenbal/app/shared/widgets/checkbox_widget.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/login_controller.dart';

// ignore: must_be_immutable
class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData.canvasColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 220),
            Row(
              children: [
                Text(
                  "Hi, Welcome back 👋",
                  style: semiBoldText24.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              "Hello again, you’ve been missed!",
              style: semiBoldText16.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Text('Email', style: boldText14.copyWith(color: Colors.white)),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              obscureText: false,
              textAlign: TextAlign.left,
              maxLines: 1,
              onSubmitted: (value) {
                FocusScope.of(context).requestFocus(passwordFocus);
              },
              focusNode: emailFocus,
              style: primaryTextStyle(),
              decoration: InputDecoration(
                fillColor: Colors.white,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                hintText: "Please Enter Your Name",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                filled: true,
                isDense: false,
                contentPadding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
              ),
            ),
            const SizedBox(height: 16),
            Text('Password', style: boldText14.copyWith(color: Colors.white)),
            const SizedBox(height: 8),
            TextField(
              controller: passwordController,
              obscureText: true,
              textAlign: TextAlign.left,
              maxLines: 1,
              onSubmitted: (value) {
                FocusScope.of(context).requestFocus(confirmPasswordFocus);
              },
              focusNode: passwordFocus,
              style: primaryTextStyle(),
              decoration: InputDecoration(
                fillColor: Colors.white,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1),
                ),
                hintText: "Please Enter Your Password",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                filled: true,
                isDense: false,
                suffixIcon: const Icon(Icons.visibility_off_outlined,
                    color: Color(0xffa7a7a7), size: 22),
                contentPadding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
              ),
            ),
            const SizedBox(height: 16),
            const CustomCheckbox(label: "Remember Me"),
            const SizedBox(height: 16),
            MaterialButton(
              onPressed: () {
                toast("Loading...");
                Future.delayed(const Duration(seconds: 1), (() {
                  Get.offAllNamed(Routes.MAIN);
                  toast("Login Success!");
                }));
              },
              color: themeData.primaryColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              textColor: const Color(0xffffffff),
              height: 40,
              minWidth: MediaQuery.of(context).size.width,
              child: const Text(
                "Login",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: semiBoldText14.copyWith(color: Colors.white),
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(Routes.REGISTER);
              },
              child: Text(
                "Register",
                style: semiBoldText14.copyWith(color: themeData.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
