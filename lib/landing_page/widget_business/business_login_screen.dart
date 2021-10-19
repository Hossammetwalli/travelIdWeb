import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class BusinessSignInView extends StatefulWidget {
  @override
  _BusinessSignInViewState createState() => _BusinessSignInViewState();
}

class _BusinessSignInViewState extends State<BusinessSignInView> {
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
      backgroundColor: AppColors.primaryWhite,
      child: SingleChildScrollView(
        child: Container(
          width: (screenSize.width < 800) ? 400 : 450,
          color: AppColors.primaryWhite,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AutoSizeText(
                  "Login",
                  style: AppTextStyles.mainTitleRegularNavy10,
                  textAlign: TextAlign.start,
                  minFontSize: 30,
                ),
                const SizedBox(
                  height: 50,
                ),
                FormBuilderTextField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _adminPropertyIdTextEditingController,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.minLength(context, 8)
                  ]),
                  cursorColor: AppColors.primaryBlack00,
                  name: "Property Id",
                  maxLines: 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: AppTextStyles.formFontSecNavy16,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.redColor5B,
                        )),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 0.5, color: AppColors.redColor5B)),
                    fillColor: AppColors.primaryWhite,
                    focusColor: AppColors.primaryWhite,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.secondaryBlack64,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.lightGreyColorD7,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.lightGreyColorD7,
                        )),
                    labelText: "PropertyID",
                    hintText: "PropertyID",
                    hintStyle: AppTextStyles.mainRegularGrey16,
                    labelStyle: AppTextStyles.mainRegularGrey16,
                    contentPadding: EdgeInsets.only(left: 15, top: 20),
                    prefixIcon: Icon(
                      Icons.hotel,
                      color: AppColors.secondaryBlack64,
                    ),
                  ),
                ),
                const SizedBox(
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
                  cursorColor: AppColors.primaryBlack00,
                  name: "Password",
                  maxLines: 1,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: AppTextStyles.formFontSecNavy16,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.redColor5B,
                        )),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            width: 0.5, color: AppColors.redColor5B)),
                    fillColor: AppColors.primaryWhite,
                    focusColor: AppColors.primaryWhite,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.secondaryBlack64,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.lightGreyColorD7,
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.lightGreyColorD7,
                        )),
                    labelText: "Passport",
                    hintText: "Passport",
                    hintStyle: AppTextStyles.mainRegularGrey16,
                    labelStyle: AppTextStyles.mainRegularGrey16,
                    contentPadding: EdgeInsets.only(left: 15, top: 20),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColors.secondaryBlack64,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.secondaryBlack64,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FormBuilderCheckbox(
                  decoration: InputDecoration(border: InputBorder.none),
                  checkColor: AppColors.primaryBlack00,
                  enabled: true,
                  name: 'Sign in',
                  initialValue: false,
                  onChanged: (value) => setState(() => _signInChecked = value),
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Keep me sign in',
                          style: AppTextStyles.formFontSecNavy16,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppElevatedButton(
                      fontSize: 16,
                      width: 160,
                      height: 40,
                      primaryColor: AppColors.primaryGreenB1,
                      radius: 8,
                      textStyle: AppTextStyles.mainTitleRegularNavy10,
                      onPress: adminLogin,
                      title: "Sign in",
                    ),
                  ],
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
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Welcome to Traveler Id Admin Dashboard"),
            backgroundColor: AppColors.secondaryGreen9C,
          ));

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
