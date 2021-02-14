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
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: scaffoldKey,
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.longestSide,
              height: MediaQuery.of(context).size.longestSide,
              child: Stack(
                children: [
                  // Positioned(
                  //   top: -40,
                  //   right: -40,
                  //   child: Container(
                  //     height: 200,
                  //     width: 200,
                  //     decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       color: AppColors.whiteColor,
                  //     ),
                  //     child: ClipRRect(
                  //       borderRadius: const BorderRadius.only(
                  //         bottomRight: const Radius.circular(0),
                  //         bottomLeft: const Radius.circular(0),
                  //       ),
                  //       child: Image(
                  //         image: AssetImage(
                  //           'assets/icons/eknon_logo.png',
                  //         ),
                  //         fit: BoxFit.fill,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: _height * .3,
                          ),
                          AutoSizeText(
                            "Property Sign In",
                            style: AppTextStyles.titleBlack,
                          ),
                          SizedBox(
                            height: _height * .09,
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                                borderSide: BorderSide(
                                    color: AppColors.navyColor, width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: AppColors.navyColor, width: 1.0)),
                              contentPadding: const EdgeInsets.only(
                                  left: 20.0, bottom: 10.0, top: 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _height * .04,
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                                borderSide: BorderSide(
                                    color: AppColors.navyColor, width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: AppColors.navyColor, width: 1.0)),
                              contentPadding: const EdgeInsets.only(
                                  left: 20.0, bottom: 10.0, top: 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: _height * .01,
                          ),
                          FormBuilderCheckbox(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            checkColor: AppColors.navyColor,
                            enabled: true,
                            name: 'Sign in',
                            initialValue: false,
                            onChanged: (value) =>
                                setState(() => _signInChecked = value),
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
                            height: _height * .05,
                          ),
                          Container(
                            width: _width * 0.8,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              color: AppColors.navyColor,
                              textColor: AppColors.whiteColor,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: AutoSizeText(
                                  "Sign In",
                                  style: AppTextStyles.subTitleWhite,
                                ),
                              ),
                              onPressed: adminLogin,
                            ),
                          ),
                          SizedBox(
                            height: _height * .05,
                          ),
                          FlatButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: AutoSizeText(
                                "Back",
                                style: AppTextStyles.subTitleBlack,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ]),
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
        var documentId = result.data()[PropertyFireStore.documentId];
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

          // print(" propertyID = " + propertyId);
          // print(" password = " + password);
          // print(" DocumentId = " + documentId);

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
