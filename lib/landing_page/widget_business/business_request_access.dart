import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:uuid/uuid.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AdminRequestAccess extends StatefulWidget {
  @override
  _AdminRequestAccessState createState() => _AdminRequestAccessState();
}

class _AdminRequestAccessState extends State<AdminRequestAccess> {
  var propertyCategoryOptions = [
    "Select Business",
    "Hotel",
    "Travel Agency",
    "Camp",
    "Resort",
    "Spa",
    "Local Experience",
    "Other"
  ];

  String _propertyCategory,
      _propertyName,
      _city,
      _country,
      _telephone,
      _infoEmail,
      _webPage,
      _contactName;

  GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _fireStoreService = AdminFirestoreService();

  var uuid = Uuid();
  FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    _formKey = null;
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.primaryWhite,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 63, right: 63),
              child: Container(
                width: 450,
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  enabled: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      AutoSizeText(
                        "Business Registration form",
                        style: AppTextStyles.mainTitleRegularNavy10,
                        textAlign: TextAlign.start,
                        minFontSize: 16,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AppFormDropDown(
                        initialValue: 'Select Business',
                        labelText: ' Business Type',
                        selectionOption: propertyCategoryOptions,
                        onSave: (value) =>
                            setState(() => _propertyCategory = value),
                        formName: "formName",
                      ),
                      const SizedBox(height: 20),
                      AppFormTextField(
                        hintText: "Property Name",
                        initialValue: "",
                        labelText: "Business Name",
                        maximumLines: 1,
                        formValidatorMinLength: 2,
                        onSave: (value) =>
                            setState(() => _propertyName = value),
                        formName: 'Property Name',
                      ),
                      const SizedBox(height: 20),
                      AppFormTextField(
                        initialValue: " ",
                        labelText: "City",
                        maximumLines: 1,
                        formValidatorMinLength: 2,
                        onSave: (value) => setState(() => _city = value),
                        formName: 'City Address',
                      ),
                      const SizedBox(height: 20),
                      AppFormCountryPicker(
                          initialValue: "LU",
                          hint: "Country",
                          label: "Country",
                          showFlag: true,
                          onSave: (value) =>
                              setState(() => _country = value.name)),
                      const SizedBox(height: 20),
                      AppFormEmailField(
                        initialValue: " ",
                        labelText: "info Email",
                        onSave: (value) => setState(() => _infoEmail = value),
                        formName: 'Email Address',
                      ),
                      const SizedBox(height: 20),
                      AppFormWebsite(
                        initialValue: " ",
                        labelText: "Website address",
                        maximumLines: 1,
                        onSave: (value) => setState(() => _webPage = value),
                        formName: 'Web site',
                      ),
                      const SizedBox(height: 20),
                      AppFormTextField(
                        initialValue: " ",
                        labelText: "Contact Name",
                        formValidatorMinLength: 8,
                        maximumLines: 1,
                        onSave: (value) => setState(() => _contactName = value),
                        formName: 'Contact Name',
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.loose,
                            child: AppElevatedButton(
                                fontSize: 14,
                                height: 40,
                                width: 168,
                                radius: 8,
                                title: "Submit",
                                textStyle:
                                    AppTextStyles.mainTitleRegularWhite10,
                                primaryColor: AppColors.primaryGreenB1,
                                onPress: () async {
                                  if (_formKey.currentState.saveAndValidate()) {
                                    _formKey.currentState.save();

                                    String propertyId =
                                        "${"P" + _city.toString().substring(0, 1).toUpperCase() + _country.toString().substring(0, 1).toUpperCase() + '11' + uuid.v4().hashCode.toString().toUpperCase()}";

                                    _fireStoreService.setAdminAccessRequest(
                                        AdminRequestModel(
                                            documentId: uuid.v4(),
                                            propertyId: propertyId,
                                            propertyCategory: _propertyCategory,
                                            webSiteUrl: _webPage.trim(),
                                            propertyName: _propertyName.trim(),
                                            country: _country,
                                            city: _city.trim(),
                                            telephone: _telephone.trim(),
                                            infoEmail: _infoEmail.trim(),
                                            contactName: _contactName.trim(),
                                            approved: false,
                                            timeStamp: DateTime.now()));

                                    _fireStoreService.setAdmins(AdminsModel(
                                        documentId: uuid.v4(),
                                        propertyId: propertyId,
                                        propertyName: _propertyName,
                                        propertyCategory: _propertyCategory,
                                        contactName: _contactName,
                                        admin: false,
                                        password: uuid
                                            .v1()
                                            .toString()
                                            .substring(0, 10),
                                        timeStamp: DateTime.now()));

                                    Navigator.of(context).pop();
                                  }
                                }),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
