import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class MessageWidget extends StatefulWidget {
  final double height;
  final double width;

  const MessageWidget({Key key, @required this.height, @required this.width})
      : super(key: key);

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  final _fireStoreService = FirestoreService();
  String _name, _email, _message;

  var uuid = Uuid();

  final _formKey = GlobalKey<FormState>();

  FocusNode textFocusNodeEmail, textFocusNodeName, textFocusNodeMessage;
  bool _isEditingEmail = false;
  bool _isEditingName = false;
  bool _isEditingMessage = false;
  bool messageIsError = false;
  String _messageResult;

  @override
  void initState() {
    // TODO: implement initState

    textFocusNodeEmail = FocusNode();
    textFocusNodeName = FocusNode();
    textFocusNodeMessage = FocusNode();
    _messageResult = null;

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _name = null;
    _email = null;
    _message = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      constraints: BoxConstraints(maxWidth: 550),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            AutoSizeText(
              "Get in touch",
              style: AppTextStyles.mainTitleRegularWhite10,
              minFontSize: 17,
            ),
            const SizedBox(
              height: 30,
            ),
            AppTextFormFieldOriginal(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? widget.width * 0.8
                  : widget.width * 0.4,
              height: 50,
              maxLine: 1,
              keyboardType: TextInputType.name,
              errorText: _isEditingName ? _validateName(_name) : null,
              validator: (value) => _validateName(value),
              hintText: 'Full Name*',
              onChange: (value) => setState(() => _isEditingName = true),
              onSave: (value) => setState(
                () => _name = value,
              ),
              textFocusNode: textFocusNodeName,
            ),
            const SizedBox(
              height: 40,
            ),
            AppTextFormFieldOriginal(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? widget.width * 0.8
                  : widget.width * 0.4,
              height: 50,
              maxLine: 1,
              keyboardType: TextInputType.emailAddress,
              errorText: _isEditingEmail ? _validateEmail(_email) : null,
              validator: (value) => _validateEmail(value),
              hintText: 'Email Address*',
              onChange: (value) => setState(() => _isEditingEmail = true),
              onSave: (value) => setState(
                () => _email = value,
              ),
              textFocusNode: textFocusNodeEmail,
            ),
            const SizedBox(
              height: 40,
            ),
            AppTextFormFieldOriginal(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? widget.width * 0.8
                  : widget.width * 0.4,
              height: 180,
              maxLine: 15,
              maxLength: 500,
              keyboardType: TextInputType.text,
              errorText: _isEditingMessage ? _validateMessage(_message) : null,
              validator: (value) => _validateMessage(value),
              hintText: 'Message*',
              onChange: (value) => setState(() => _isEditingMessage = true),
              onSave: (value) => setState(
                () => _message = value,
              ),
              textFocusNode: textFocusNodeMessage,
            ),
            const SizedBox(
              height: 40,
            ),
            AppElevatedButton(
              fontSize: 15,
              radius: 8.0,
              textStyle: AppTextStyles.mainTitleRegularWhite10,
              height: 40,
              width: 180,
              title: "Send",
              primaryColor: AppColors.primaryGreenB1,
              onPress: () async {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();

                  if (_validateEmail(_email) != null ||
                      _validateName(_name) != null ||
                      _validateMessage(_message) != null) {
                    setState(() {
                      messageIsError = true;
                      _messageResult = "SomeThing went wrong, Please try again";
                    });
                  } else {
                    await _fireStoreService.sendEmail(
                      EmailSendModel(
                          senderName: _name,
                          emailId: uuid.v4(),
                          senderEmail: _email,
                          message: _message,
                          timeStamp: DateTime.now(),
                          done: false),
                    );

                    setState(() {
                      textFocusNodeEmail.unfocus();
                      textFocusNodeMessage.unfocus();
                      textFocusNodeName.unfocus();
                      messageIsError = false;
                      _messageResult =
                          "Thank you for contacting us, we will get back to you soon";
                      _name = null;
                    });
                  }
                } else {
                  setState(() {
                    messageIsError = true;
                    _messageResult = "SomeThing went wrong, Please try again";
                  });
                }
              },
            ),
            const SizedBox(
              height: 40,
            ),
            showAlert(),
          ],
        ),
      ),
    );
  }

  String _validateEmail(String value) {
    if (_email != null) {
      if (value.isEmpty) {
        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        return 'Enter a correct email address';
      }
    }

    return null;
  }

  String _validateName(String value) {
    if (_name != null) {
      if (value.isEmpty) {
        return 'Name can\'t be empty';
      }
    }
    return null;
  }

  String _validateMessage(String value) {
    if (_message != null) {
      if (value.isEmpty) {
        return 'Field can\'t be empty';
      }
    }

    return null;
  }

  Widget showAlert() {
    if (_messageResult != null) {
      return Container(
        color: AppColors.primaryWhite,
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                messageIsError == true
                    ? Icons.error_outline
                    : Icons.verified_outlined,
                color: messageIsError == true ? Colors.red : Colors.green,
              ),
            ),
            Expanded(
              child: AutoSizeText(
                _messageResult,
                style: TextStyle(
                  color: messageIsError == true ? Colors.red : Colors.green,
                ),
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
