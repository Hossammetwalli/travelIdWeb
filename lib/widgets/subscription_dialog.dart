import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class SubscriptionDialog extends StatefulWidget {
  @override
  _SubscriptionDialogState createState() => _SubscriptionDialogState();
}

class _SubscriptionDialogState extends State<SubscriptionDialog> {
  GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  FocusNode focusNode;
  var uuid = Uuid();
  String _subscriptionEmail, _fullName;

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

  TextEditingController emailTextEditingController;

  FocusNode textFocusNodeEmail;

  final AuthBloc auth = AuthBloc();
  String _messageResult;

  bool messageIsError = false;

  Color loginStringColor;

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
            padding: const EdgeInsets.all(63),
            child: Container(
              width: 350,
              child: FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                enabled: true,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AutoSizeText(
                      ConstString.dialogCondition1,
                      style: AppTextStyles.mainTitleRegularNavy10,
                      textAlign: TextAlign.start,
                      maxFontSize: 18,
                    ),
                    const SizedBox(height: 30),
                    AppFormTextField(
                      formName: "Subscriber Name",
                      emailValidator: false,
                      hintText: "Full Name",
                      initialValue: "",
                      labelText: "Full Name",
                      maximumLines: 1,
                      formValidatorMinLength: 5,
                      maximumLength: 50,
                      onSave: (value) => setState(() => _fullName = value),
                    ),
                    const SizedBox(height: 20),
                    AutoSizeText(
                      'Email address',
                      textAlign: TextAlign.left,
                      maxFontSize: 15,
                      style: AppTextStyles.mainTitleRegularNavy10,
                    ),
                    const SizedBox(height: 5),
                    AppFormEmailField(
                      formName: "Personal email",
                      initialValue: "",
                      labelText: "Subscription Email",
                      onSave: (value) =>
                          setState(() => _subscriptionEmail = value),
                    ),

                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: AppElevatedButton(
                            fontSize: 15,
                            width: 140,
                            height: 40,
                            title: "Join Now",
                            primaryColor: AppColors.primaryGreenB1,
                            radius: 8,
                            textStyle: AppTextStyles.mainTitleRegularNavy10,
                            onPress: () async {
                              if (_formKey.currentState.saveAndValidate()) {
                                _formKey.currentState.save();

                                await _adminFireStoreService
                                    .userSubscriptionRequest(UserModel(
                                  userName: _fullName,
                                  done: false,
                                  userEmail: _subscriptionEmail,
                                  timeStamp: DateTime.now(),
                                ));
                                setState(() {
                                  messageIsError = false;
                                  _messageResult =
                                      'Congratulation you have registered successfully';
                                  loginStringColor = Colors.green;
                                });

                                Navigator.of(context).pop();
                              } else {
                                setState(() {
                                  messageIsError = true;
                                  _messageResult =
                                      'Please enter valid information';
                                  loginStringColor = Colors.red;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    showAlert(),
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
                            Expanded(
                              child: AutoSizeText(
                                ConstString.dialogTerms1,
                                maxLines: 2,
                                maxFontSize: 12,
                                style: AppTextStyles.mainTitleRegularNavy10,
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  _launchSocial("https://www.facebook.com/",
                                      "https://www.facebook.com/");
                                },
                                child: AutoSizeText(
                                  ConstString.dialogTerms2,
                                  maxLines: 2,
                                  maxFontSize: 12,
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
                            Expanded(
                              child: AutoSizeText(
                                ConstString.dialogTerms3,
                                maxLines: 2,
                                maxFontSize: 12,
                                style: AppTextStyles.mainTitleRegularNavy10,
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  _launchSocial("https://www.facebook.com/",
                                      "https://www.facebook.com/");
                                },
                                child: AutoSizeText(
                                  ConstString.dialogTerms4,
                                  maxLines: 2,
                                  maxFontSize: 12,
                                  style: AppTextStyles.mainTitleRegularGreen10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                    // const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget showAlert() {
    if (_messageResult != null) {
      return Container(
        color: AppColors.primaryWhite,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Icon(
              messageIsError == true
                  ? Icons.error_outline
                  : Icons.verified_outlined,
              color: messageIsError == true ? Colors.red : Colors.green,
            ),
            Expanded(
              child: AutoSizeText(
                _messageResult,
                maxFontSize: 14,
                style: TextStyle(
                  color: messageIsError == true ? Colors.red : Colors.green,
                ),
                maxLines: 3,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.close,
                size: 15,
                color: AppColors.secondaryBlack64,
              ),
              onPressed: () {
                setState(() {
                  _messageResult = null;
                });
              },
            )
          ],
        ),
      );
    }
    return const SizedBox(
      height: 0,
    );
  }

  void _launchSocial(String url, String fallbackUrl) async {
    // Don't use canLaunch because of fbProtocolUrl (fb://)
    try {
      bool launched =
          await launch(url, forceSafariVC: false, forceWebView: false);
      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
    }
  }
}
