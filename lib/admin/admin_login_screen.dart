import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_collections_firestore.dart';
import 'package:webapptrial/const/constant_property_info_firestore.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/widgets/elevated_button.dart';
import 'package:webapptrial/widgets/responsive.dart';

class AdminSignInView extends StatefulWidget {
  @override
  _AdminSignInViewState createState() => _AdminSignInViewState();
}

class _AdminSignInViewState extends State<AdminSignInView> {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  bool _passwordVisible = true;
  bool _signInChecked = false;

  TextEditingController _adminPropertyIdTextEditingController =
      TextEditingController();
  TextEditingController _adminPasswordTextEditingController =
      TextEditingController();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 100, right: 100, bottom: 100),
            width: ResponsiveWidget.isSmallScreen(context)
                ? screenSize.width * .8
                : screenSize.width * .4,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    AppTextButton(
                      width: 40,
                      height: 50,
                      onPress: () => Navigator.of(context).pop(),
                      title: "Exit",
                      primaryColor: AppColors.whiteColor,
                      textStyle: TextStyle(color: Colors.red, fontSize: 15),
                      radius: 10,
                    ),
                  ],
                ),
                AutoSizeText(
                  "Login",
                  style: AppTextStyles.titleBlack,
                ),
                SizedBox(
                  height: 75,
                ),
                FormBuilderTextField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _adminPropertyIdTextEditingController,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.minLength(context, 8)
                  ]),
                  cursorColor: AppColors.navyColor,
                  name: "Property Id",
                  maxLines: 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: AppTextStyles.businessSubtitleNavy,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "PropertyID",
                    hintStyle: AppTextStyles.contentBlue,
                    prefixIcon: Icon(
                      Icons.hotel,
                      color: AppColors.navyColor,
                    ),
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    focusColor: AppColors.navyColor,
                    labelText: "Property ID",
                    labelStyle: AppTextStyles.contentBlue,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.navyColor, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: AppColors.navyColor, width: 1.0)),
                    contentPadding: const EdgeInsets.only(
                        left: 20.0, bottom: 10.0, top: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FormBuilderTextField(
                  textCapitalization: TextCapitalization.sentences,
                  textAlign: TextAlign.center,
                  controller: _adminPasswordTextEditingController,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.minLength(context, 8)
                  ]),
                  cursorColor: AppColors.navyColor,
                  name: "Password",
                  maxLines: 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: AppTextStyles.businessSubtitleNavy,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: AppTextStyles.businessSubtitleNavy,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColors.navyColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.navyColor,
                    ),
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    focusColor: AppColors.navyColor,
                    labelText: "Password",
                    labelStyle: AppTextStyles.contentBlue,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.navyColor, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: AppColors.navyColor, width: 1.0)),
                    contentPadding: const EdgeInsets.only(
                        left: 20.0, bottom: 10.0, top: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FormBuilderCheckbox(
                  decoration: InputDecoration(border: InputBorder.none),
                  checkColor: AppColors.navyColor,
                  enabled: true,
                  name: 'Sign in',
                  initialValue: false,
                  onChanged: (value) => setState(() => _signInChecked = value),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Keep me sign in',
                          style: AppTextStyles.contentBlue,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _signInChecked = !_signInChecked;
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                AppElevatedButton(
                  width: 300,
                  height: 50,
                  onPress: adminLogin,
                  title: "Sign in",
                  primaryColor: AppColors.navyColor,
                  radius: 30.0,
                  textStyle: AppTextStyles.businessSubtitleWhite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  adminLogin() {
    _db
        .collection(CollectionsFireStore.admin)
        .where(PropertyFireStore.propertyId,
            isEqualTo: _adminPropertyIdTextEditingController.text)
        .get()
        .then((snapshot) {
      snapshot.docs.forEach((result) {
        var propertyId = result.data()[PropertyFireStore.propertyId];
        // var documentId = result.data()[PropertyFireStore.documentId];
        var password = result.data()[PropertyFireStore.password];

        if (propertyId == _adminPropertyIdTextEditingController.text &&
            password == _adminPasswordTextEditingController.text) {
          // ScaffoldMessenger.of(context).showSnackBar( SnackBar(
          //
          //   content: Text("Welcome to Traveler Id Admin Dashboard"),
          //   backgroundColor: AppColors.greenColor,
          //
          //
          //
          //
          // ));

          setState(() {
            _adminPropertyIdTextEditingController.text = propertyId;
            _adminPasswordTextEditingController.text = password;
          });

          // Route route = MaterialPageRoute(
          //     builder: (c) => AdminLandingPage(
          //           propertyId: propertyId,
          //           password: password,
          //           documentId: documentId,
          //         ));
          // Navigator.pushReplacement(context, route);
        } else if (propertyId == _adminPropertyIdTextEditingController.text ||
            password == _adminPasswordTextEditingController.text) {
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
                "Wrong ID or Password, Please Enter the right credentials"),
            backgroundColor: Colors.red,
            padding: const EdgeInsets.all(15),
          ));
        } else {
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Try again"),
            backgroundColor: Colors.red,
            padding: const EdgeInsets.all(15),
          ));
        }
      });
    });
  }
}
