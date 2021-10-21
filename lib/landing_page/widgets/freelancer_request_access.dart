import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class FreelancerRequestAccess extends StatefulWidget {
  @override
  _FreelancerRequestAccessState createState() =>
      _FreelancerRequestAccessState();
}

class _FreelancerRequestAccessState extends State<FreelancerRequestAccess> {
  var areaOfSkills = [
    "Researching & Planning",
    "Flights & Airlines",
    "Holiday Packages",
    "Concierge Services",
    "Lodging & Hotels",
    "Luxury Services",
    "Problems Solving",
    'Camping & Activities',
    'Corporate & Business',
    "Groups & Mice",
    "Parties & Events",
    "Family services",
    "Personal Shopping",
    "Food & Beverage",
    "Local Transportation",
    'Housekeeping',
    "Hourly jobs",
    "Virtual travel services",
    "Remote Work",
    "Other"
  ];

  List reasonToJoin = [
    "You are travel workforce",
    "You are travel fan",
    "You are travel hacker",
    "You sell local experiences",
    "You work online",
    "You work offline",
    "You are Student",
    "Other",
  ];

  String _speciality, //
      _fullName,
      _serviceShortDescription, //
      _whyDoYouWantToJoin,
      _serviceDestinationCountry, //
      _businessEmail //
      ;

  GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  FocusNode focusNode;
  var uuid = Uuid();

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
    var _adminFireStoreService =
        Provider.of<AdminFirestoreService>(context, listen: false);
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                enabled: true,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    AutoSizeText(
                      "Freelancer Application",
                      style: AppTextStyles.mainTitleRegularNavy10,
                      textAlign: TextAlign.start,
                      minFontSize: 15,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppFormTextField(
                      formName: "Freelancer Name",
                      emailValidator: false,
                      hintText: "Full Name",
                      initialValue: "",
                      labelText: "Full Name",
                      maximumLines: 1,
                      formValidatorMinLength: 2,
                      maximumLength: 50,
                      onSave: (value) => setState(() => _fullName = value),
                    ),
                    const SizedBox(height: 20),
                    AppFormEmailField(
                      formName: "Business email",
                      initialValue: "",
                      labelText: "Contact Email",
                      onSave: (value) => setState(() => _businessEmail = value),
                    ),
                    const SizedBox(height: 20),
                    AppFormDropDown(
                      formName: "Service",
                      initialValue: "Researching & Planning",
                      labelText: 'What you do',
                      selectionOption: areaOfSkills,
                      onSave: (value) => setState(() => _speciality = value),
                    ),
                    const SizedBox(height: 20),
                    AppFormCountryPicker(
                        initialValue: "LU",
                        label: "Where",
                        hint: "Country",
                        showFlag: true,
                        onSave: (value) => setState(
                            () => _serviceDestinationCountry = value.name)),
                    const SizedBox(height: 20),
                    AppFormTextField(
                      formName: "Short description",
                      emailValidator: false,
                      hintText: "Main Service Short Description",
                      initialValue: "",
                      labelText: "Service Short Description",
                      maximumLines: 5,
                      formValidatorMinLength: 60,
                      maximumLength: 200,
                      onSave: (value) =>
                          setState(() => _serviceShortDescription = value),
                    ),
                    const SizedBox(height: 20),
                    AppFormDropDown(
                      formName: "Reason for Join",
                      initialValue: "You are travel hacker",
                      labelText: 'About you',
                      selectionOption: reasonToJoin,
                      onSave: (value) =>
                          setState(() => _whyDoYouWantToJoin = value),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.loose,
                          child: AppElevatedButton(
                              fontSize: 15,
                              height: 40,
                              width: 168,
                              radius: 8,
                              title: "Submit",
                              textStyle: AppTextStyles.mainTitleRegularWhite10,
                              primaryColor: AppColors.primaryGreenB1,
                              // gradient: AppColors.buttonPrimaryColorGradient,
                              onPress: () async {
                                if (_formKey.currentState.saveAndValidate()) {
                                  _formKey.currentState.save();

                                  _adminFireStoreService
                                      .setFreelancerAccessRequest(
                                          FreelancerRequestModel(
                                              businessEmail: _businessEmail,
                                              freelancerName: _fullName,
                                              requestApproved: false,
                                              serviceDestinationCountry:
                                                  _serviceDestinationCountry,
                                              serviceShortDescription:
                                                  _serviceShortDescription,
                                              speciality: _speciality,
                                              timeStamp: DateTime.now(),
                                              userID: uuid.v4(),
                                              whyDoYouWantToJoin:
                                                  _whyDoYouWantToJoin));
                                }
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Divider(
                      height: 1,
                      color: AppColors.primaryBlack00,
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        // todo inkwell
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              fit: FlexFit.loose,
                              child: AutoSizeText(
                                ConstString.dialogTerms1,
                                maxLines: 2,
                                minFontSize: 12,
                                style: AppTextStyles.mainTitleRegularNavy10,
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              child: InkWell(
                                onTap: () async => await Navigator.of(context)
                                    .pushNamed(TermsOfUseWidget.route),
                                child: AutoSizeText(
                                  ConstString.dialogTerms2,
                                  maxLines: 2,
                                  minFontSize: 12,
                                  style: AppTextStyles.mainTitleRegularGreen10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              fit: FlexFit.loose,
                              child: AutoSizeText(
                                ConstString.dialogTerms3,
                                maxLines: 2,
                                minFontSize: 12,
                                style: AppTextStyles.mainTitleRegularNavy10,
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              child: InkWell(
                                onTap: () async => await Navigator.of(context)
                                    .pushNamed(PrivacyPolicyWidget.route),
                                child: AutoSizeText(
                                  ConstString.dialogTerms4,
                                  maxLines: 2,
                                  minFontSize: 12,
                                  style: AppTextStyles.mainTitleRegularGreen10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
