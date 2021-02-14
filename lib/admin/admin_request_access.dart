import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:traveler_id/styles/form_builder_three.dart';
import 'package:traveler_id/widgets/exports_packages.dart';
import 'package:uuid/uuid.dart';

class AdminRequestAccess extends StatefulWidget {
  @override
  _AdminRequestAccessState createState() => _AdminRequestAccessState();
}

class _AdminRequestAccessState extends State<AdminRequestAccess> {
  var propertyCategory = [
    "Apartment Hotel",
    "Boutique Hotel",
    "Camp",
    "Condo Resort",
    "Cottage",
    "Family Hotel",
    "Guest House",
    'Hotel',
    "Hostel",
    "Inns and B&Bs",
    'Resort',
    'Motel',
    "Spa Hotel",
    "Activities",
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
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: AppColors.backgroundColor),
        backgroundColor: AppColors.primaryColorBlended,
        elevation: 0.0,
        title: AutoSizeText(
          'Request Business Account',
          style: TextStyle(color: AppColors.backgroundColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                readOnly: false,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      AutoSizeText(
                        "Complete Registration form",
                        style: AppTextStyles.titlePrimary,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppFormDropDown(
                        initialValue: 'Hotel',
                        labelText: ' Business Type',
                        selectionOption: propertyCategory,
                        onSave: (value) =>
                            setState(() => _propertyCategory = value),
                      ),
                      const SizedBox(height: 15),
                      AppFormTextField(
                        emailValidator: false,
                        hintText: "Property Name",
                        initialValue: "",
                        labelText: "Business Name",
                        maximumLines: 1,
                        formValidatorMinLength: 2,
                        onSave: (value) =>
                            setState(() => _propertyName = value),
                      ),
                      const SizedBox(height: 15),
                      AppFormTextField(
                        initialValue: "",
                        labelText: "City",
                        maximumLines: 1,
                        formValidatorMinLength: 2,
                        onSave: (value) => setState(() => _city = value),
                      ),
                      const SizedBox(height: 15),
                      AppFormCountryPicker(
                          labelText: 'Country',
                          initialValue: "US",
                          onSave: (value) => setState(() => _country = value)),
                      const SizedBox(height: 15),
                      AppFormPhoneField(
                        initialValue: "",
                        labelText: "Phone Number",
                        onSave: (value) => setState(() => _telephone = value),
                      ),
                      const SizedBox(height: 15),
                      AppFormEmailField(
                        initialValue: "",
                        labelText: "info Email",
                        onSave: (value) => setState(() => _infoEmail = value),
                      ),
                      const SizedBox(height: 15),
                      AppFormWebsite(
                        initialValue: "",
                        labelText: "Website address",
                        maximumLines: 1,
                        onSave: (value) => setState(() => _webPage = value),
                      ),
                      const SizedBox(height: 15),
                      AppFormTextField(
                        initialValue: "",
                        labelText: "Contact Name",
                        formValidatorMinLength: 8,
                        maximumLines: 1,
                        onSave: (value) => setState(() => _contactName = value),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: AppButton(
                                buttonType: ButtonType.DarkBlue,
                                buttonText: 'Submit',
                                onPressed: () async {
                                  if (_formKey.currentState.saveAndValidate()) {
                                    _formKey.currentState.save();

                                    final uid = await Provider.of<AuthBloc>(
                                            context,
                                            listen: false)
                                        .getCurrentUID();

                                    String propertyId =
                                        "${"P" + _city.toString().substring(0, 1).toUpperCase() + _country.toString().substring(0, 1).toUpperCase() + '11' + uuid.v4().hashCode.toString().toUpperCase()}";

                                    _fireStoreService.setAdminAccessRequest(
                                        AdminRequestModel(
                                            documentId: uid,
                                            propertyId: propertyId,
                                            propertyCategory: _propertyCategory,
                                            webSiteUrl: _webPage.trim(),
                                            propertyName: _propertyName.trim(),
                                            country: _country,
                                            city: _city.trim(),
                                            telephone: _telephone.trim(),
                                            infoEmail: _infoEmail.trim(),
                                            contactName: _contactName.trim(),
                                            approved: false));

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
                                            .substring(0, 10)));

                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          CustomDialog(
                                        title: "Add property request sent",
                                        description:
                                            "Your Request is under review, \ our team will contact you soon",
                                        primaryButtonText: "Ok",
                                        secondaryButtonText: "",
                                      ),
                                    );

                                    Navigator.of(context).pop();
                                  }
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
