import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:traveler_id/widgets/exports_packages.dart';

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
                  Positioned(
                    top: -40,
                    right: -40,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.backgroundColor,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: const Radius.circular(0),
                          bottomLeft: const Radius.circular(0),
                        ),
                        child: Image(
                          image: AssetImage(
                            'assets/icons/eknon_logo.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
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
                            style: AppTextStyles.firstViewBlendedSubtitle,
                          ),
                          SizedBox(
                            height: _height * .09,
                          ),
                          FormBuilderTextField(
                            textCapitalization: TextCapitalization.sentences,
                            controller: _adminPropertyIdTextEditingController,
                            validators: [
                              FormBuilderValidators.required(),
                              FormBuilderValidators.minLength(8)
                            ],
                            cursorColor: AppColors.primaryColorBlended,
                            attribute: "Property Id",
                            maxLines: 1,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: AppTextStyles.titlePrimary,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: "PropertyID",
                              hintStyle: AppTextStyles.titleGreyColor,
                              prefixIcon: Icon(
                                Icons.hotel,
                                color: AppColors.primaryColorBlended,
                              ),
                              filled: true,
                              fillColor: AppColors.backgroundColor,
                              focusColor: AppColors.primaryColorBlended,
                              labelText: "Property ID",
                              labelStyle: AppTextStyles.titlePrimary,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.primaryColorBlended,
                                    width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryColorBlended,
                                      width: 1.0)),
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
                            validators: [
                              FormBuilderValidators.required(),
                              FormBuilderValidators.minLength(8)
                            ],
                            cursorColor: AppColors.primaryColorBlended,
                            attribute: "Password",
                            maxLines: 1,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: AppTextStyles.titlePrimary,
                            obscureText: _passwordVisible,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppTextStyles.titleGreyColor,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.primaryColorBlended,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: AppColors.primaryColorBlended,
                              ),
                              filled: true,
                              fillColor: AppColors.backgroundColor,
                              focusColor: AppColors.primaryColorBlended,
                              labelText: "Password",
                              labelStyle: AppTextStyles.titlePrimary,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.primaryColorBlended,
                                    width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: AppColors.primaryColorBlended,
                                      width: 1.0)),
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

                            checkColor: AppColors.primaryColorBlended,
                            leadingInput: true,

                            attribute: 'Sign in',
                            initialValue: false,
                            onChanged: (value) =>
                                setState(() => _signInChecked = value),

                            label: RichText(
                              text: TextSpan(
                                children: [


                                  TextSpan(
                                    text: 'Keep me sign in',
                                    style: AppTextStyles.titlePrimary,
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
                              color: AppColors.primaryColorBlended,
                              textColor: AppColors.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: AutoSizeText(
                                  "Sign In",
                                  style: AppTextStyles.titleBackgroundColor,
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
                                style: AppTextStyles.titlePrimary,
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

          Route route = MaterialPageRoute(
              builder: (c) => AdminLandingPage(
                    propertyId: propertyId,
                    password: password,
                    documentId: documentId,
                  ));
          Navigator.pushReplacement(context, route);
        } else if (propertyId == _adminPropertyIdTextEditingController.text ||
            password == _adminPasswordTextEditingController.text) {
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
                "Wrong ID or Password, Please Enter the right credentials"),
            backgroundColor: AppColors.redColor,
            padding: const EdgeInsets.all(15),
          ));
        } else {
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Try again"),
            backgroundColor: AppColors.redColor,
            padding: const EdgeInsets.all(15),
          ));
        }
      });
    });
  }
}
