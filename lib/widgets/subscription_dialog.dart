import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:webapptrial/const/colors.dart';
import 'package:webapptrial/const/const_string.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/services/auth_bloc.dart';


class SubscriptionDialog extends StatefulWidget {
  @override
  _SubscriptionDialogState createState() => _SubscriptionDialogState();
}

class _SubscriptionDialogState extends State<SubscriptionDialog> {
  TextEditingController emailTextEditingController;
  FocusNode textFocusNodeEmail;

  var uuid = Uuid();
  final AuthBloc auth = AuthBloc();
  String _messageResult;
  bool _isRegistering = false;
  bool _isEditingEmail = false;
  bool messageIsError = false;

  Color loginStringColor;

  String _validateEmail(String value) {
    value = value.trim();

    if (emailTextEditingController.text != null) {
      if (value.isEmpty) {


        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        return 'Enter a correct email address';
      }
    }

    return null;
  }

  @override
  void initState() {
    emailTextEditingController = TextEditingController();
    emailTextEditingController.text = null;
    textFocusNodeEmail = FocusNode();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 450,

            color: AppColors.whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  IconButton(
                    color: Colors.red, focusColor: AppColors.whiteColor, hoverColor: AppColors.whiteColor,
                    icon: (Icon(Icons.clear,)),
                    onPressed: ()=> Navigator.of(context).pop(),


                    ),
                ],),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    ConstString.dialogTitle,
                    style: AppTextStyles.subTitleBlack, textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    bottom: 8,
                  ),
                  child: Text(
                    ConstString.dialogCondition1,
                    style: AppTextStyles.contentBlack, textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    bottom: 8,
                  ),
                  child: Text(
                    ConstString.dialogCondition2,
                    style: AppTextStyles.contentBlack, textAlign: TextAlign.start,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    bottom: 8,
                  ),
                  child: Text(
                    ConstString.dialogCondition3,
                    style: AppTextStyles.contentBlack, textAlign: TextAlign.start,
                  ),
                ),
                const  SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    bottom: 8,
                  ),
                  child: Text(
                    'Email address',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: TextField(

                    focusNode: textFocusNodeEmail,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    controller: emailTextEditingController,
                    autofocus: false,
                    onChanged: (value) {
                      setState(() {
                        _isEditingEmail = true;
                      });
                    },
                    onSubmitted: (value) {
                      textFocusNodeEmail.unfocus();
                      FocusScope.of(context).requestFocus(textFocusNodeEmail);
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: buildInputDecoration(),
                  ),
                ),
                const  SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.maxFinite,
                          child: FlatButton(
                            color: AppColors.sBlueColor,
                            hoverColor: AppColors.purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                           // highlightColor: Colors.black,
                            onPressed: () async {
                              setState(() {
                                textFocusNodeEmail.unfocus();
                              });
                              if (_validateEmail(
                                      emailTextEditingController.text) ==
                                  null) {
                                setState(() {
                                  _isRegistering = true;
                                });
                                await auth.registerWithEmailPassword(
                                        emailTextEditingController.text,
                                        uuid.v1())
                                    .then((result) {
                                  if (result != null) {
                                    setState(() {
                                      messageIsError = false;
                                      _messageResult =
                                          'Congratulation you have registered successfully';
                                      loginStringColor = Colors.green;
                                    });


                                  }
                                }).catchError((error) {
                                 // print('Registration Error: $error');
                                  setState(() {
                                    messageIsError = true;
                                    _messageResult = error.message;

                                    loginStringColor = Colors.red;
                                  });
                                });
                              } else {
                                setState(() {
                                  messageIsError = true;
                                  _messageResult = 'Please enter valid email ';
                                  loginStringColor = Colors.red;
                                });
                              }
                              setState(() {
                                _isRegistering = false;

                                emailTextEditingController.text = '';

                                _isEditingEmail = false;
                              });


                            },

                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 15.0,
                                bottom: 15.0,
                              ),
                              child: _isRegistering
                                  ?  SizedBox(
                                      height: 16,
                                      width: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                          Colors.white,
                                        ),
                                      ),
                                    )
                                  : Text(
                                      'Join',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showAlert(),
                const  SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.blueGrey[200],
                  ),
                ),
                const  SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(

                    children: [
                      // todo inkwell
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ConstString.dialogTerms1,
                            maxLines: 2,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              // letterSpacing: 3,
                            ),
                          ),
                          Text(
                            ConstString.dialogTerms2,
                            maxLines: 2,
                            style: TextStyle(
                              color: AppColors.sBlueColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              // letterSpacing: 3,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ConstString.dialogTerms3,
                            maxLines: 2,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              // letterSpacing: 3,
                            ),
                          ),
                          Text(
                            ConstString.dialogTerms4,
                            maxLines: 2,
                            style: TextStyle(
                              color: AppColors.sBlueColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              // letterSpacing: 3,
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blueGrey[800],
                        width: 1,
                      ),
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blueGrey[800],
                        width: 1,
                      ),
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blueGrey[800],
                        width: 1,
                      ),
                    ),
                    filled: true,
                    hintStyle: AppTextStyles.contentBlack,
                    hintText: "Email",
                    fillColor: Colors.white,
                    errorText: _isEditingEmail
                        ? _validateEmail(emailTextEditingController.text)
                        : null,
                    errorStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.redAccent,
                    ),
                  );
  }


  Widget showAlert() {
    if (_messageResult != null) {
      return Container(
        color: AppColors.whiteColor,
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
               messageIsError == true ? Icons.error_outline : Icons.verified_outlined,
                color: messageIsError == true ? Colors.red : Colors.green,
              ),
            ),
            Expanded(
              child: Text(
                _messageResult, style: TextStyle(color: messageIsError == true ? Colors.red : Colors.green,),

                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _messageResult = null;
                  });
                },
              ),
            )
          ],
        ),
      );
    }
    return const SizedBox(
      height: 0,
    );
  }


}
