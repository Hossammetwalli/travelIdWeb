// import 'package:flutter/material.dart';
// import 'package:webapptrial/const/colors.dart';
// import 'package:webapptrial/screens/users/bottom_about_us.dart';
// import 'package:webapptrial/screens/users/bottom_message.dart';
//
//
// class BottomLargeScreen extends StatefulWidget {
//   final double height;
//   final double width;
//
//   const BottomLargeScreen({Key key, this.height, this.width}) : super(key: key);
//
//   @override
//   _BottomLargeScreenState createState() => _BottomLargeScreenState();
// }
//
// class _BottomLargeScreenState extends State<BottomLargeScreen> {
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(30),
//       color: AppColors.purpleColor,
//       height: widget.height * .8,
//       width: widget.width,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   MessageWidget(height: widget.height, width: widget.width,),
//
//                   Container(
//                     color: Colors.blueGrey,
//                     width: 2,
//                     height: 300,
//                   ),
//                   AboutUs(
//                     height: widget.height,
//                     width: widget.width,
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.blueGrey,
//                 width: double.maxFinite,
//                 height: 2,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               'Copyright © 2021 | eknon Tech OÜ',
//               style: TextStyle(
//                 color: AppColors.whiteColor,
//                 fontSize: 14,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Container messageContainer() {
//   //   return Container(
//   //     height: widget.height * .8,
//   //     width: widget.width * .4,
//   //     color: AppColors.purpleColor,
//   //     child: Form(
//   //       key: _formKey,
//   //       autovalidateMode: AutovalidateMode.onUserInteraction,
//   //       child: Column(
//   //         children: [
//   //           Text(
//   //             ConstString.getInTouch,
//   //             style: AppTextStyles.subHeadlineWhite,
//   //           ),
//   //           const SizedBox(
//   //             height: 30,
//   //           ),
//   //           AppTextFormField(
//   //             width: widget.width * 0.3,
//   //             height: 50,
//   //             maxLine: 1,
//   //             keyboardType: TextInputType.name,
//   //             errorText: _isEditingName ? _validateName(_name) : null,
//   //             validator: (value) => _validateName(value),
//   //             hintText: 'Full Name*',
//   //             onChange: (value) => setState(() => _isEditingName = true),
//   //             onSave: (value) => setState(() => _name = value,),
//   //             textFocusNode: textFocusNodeName,
//   //           ),
//   //
//   //
//   //           const SizedBox(
//   //             height: 40,
//   //           ),
//   //
//   //           AppTextFormField(
//   //             width: widget.width * 0.3,
//   //             height: 50,
//   //             maxLine: 1,
//   //             keyboardType: TextInputType.emailAddress,
//   //             errorText: _isEditingEmail ? _validateEmail(_email) : null,
//   //             validator: (value) => _validateEmail(value),
//   //             hintText: 'Email Address*',
//   //             onChange: (value) => setState(() => _isEditingEmail = true),
//   //             onSave: (value) => setState(() => _email = value,),
//   //             textFocusNode: textFocusNodeEmail,
//   //           ),
//   //
//   //
//   //
//   //           const SizedBox(
//   //             height: 40,
//   //           ),
//   //
//   //           AppTextFormField(
//   //             width: widget.width * 0.3,
//   //             height: 180,
//   //             maxLine: 15,
//   //             maxLength: 500,
//   //             keyboardType: TextInputType.text,
//   //             errorText: _isEditingMessage ? _validateMessage(_message) : null,
//   //             validator: (value) => _validateMessage(value),
//   //             hintText: 'Message*',
//   //             onChange: (value) => setState(() => _isEditingMessage = true),
//   //             onSave: (value) => setState(() => _message = value,),
//   //             textFocusNode: textFocusNodeMessage,
//   //           ),
//   //
//   //           const SizedBox(
//   //             height: 40,
//   //           ),
//   //           Container(
//   //             width: widget.width * .2,
//   //             child: FlatButton(
//   //                 color: AppColors.sBlueColor,
//   //                 hoverColor: AppColors.navyColor,
//   //                 shape: RoundedRectangleBorder(
//   //                   borderRadius: BorderRadius.circular(30),
//   //                 ),
//   //                 onPressed: () async {
//   //                   if (_formKey.currentState.validate()) {
//   //                     _formKey.currentState.save();
//   //
//   //                     if (_validateEmail(_email) != null ||
//   //                         _validateName(_name) != null ||
//   //                         _validateMessage(_message) != null) {
//   //                       setState(() {
//   //                         messageIsError = true;
//   //                         _messageResult =
//   //                             "SomeThing went wrong, Please try again";
//   //                       });
//   //                     } else {
//   //                       await _fireStoreService.sendEmail(
//   //                         EmailSendModel(
//   //                             senderName: _name,
//   //                             emailId: uuid.v4(),
//   //                             senderEmail: _email,
//   //                             message: _message,
//   //                             timeStamp: DateTime.now(),
//   //                             done: false),
//   //                       );
//   //
//   //                       setState(() {
//   //                         textFocusNodeEmail.unfocus();
//   //                         textFocusNodeMessage.unfocus();
//   //                         textFocusNodeName.unfocus();
//   //                         messageIsError = false;
//   //                         _messageResult =
//   //                             "Thank you for contacting us, we will get back to you soon";
//   //                         _name = null;
//   //                       });
//   //                     }
//   //                   } else {
//   //                     setState(() {
//   //                       messageIsError = true;
//   //                       _messageResult =
//   //                           "SomeThing went wrong, Please try again";
//   //                     });
//   //                   }
//   //                 },
//   //                 child: Padding(
//   //                   padding: const EdgeInsets.only(
//   //                     top: 15.0,
//   //                     bottom: 15.0,
//   //                   ),
//   //                   child: Text(
//   //                     ConstString.sendMessage,
//   //                     style: AppTextStyles.contentWhiteM,
//   //                   ),
//   //                 )),
//   //           ),
//   //           const SizedBox(
//   //             height: 40,
//   //           ),
//   //           showAlert(),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
//   //
//   // String _validateEmail(String value) {
//   //   if (_email != null) {
//   //     if (value.isEmpty) {
//   //       return 'Email can\'t be empty';
//   //     } else if (!value.contains(RegExp(
//   //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
//   //       return 'Enter a correct email address';
//   //     }
//   //   }
//   //
//   //   return null;
//   // }
//   //
//   // String _validateName(String value) {
//   //   if (_name != null) {
//   //     if (value.isEmpty) {
//   //       return 'Name can\'t be empty';
//   //     }
//   //   }
//   //   return null;
//   // }
//   //
//   // String _validateMessage(String value) {
//   //   if (_message != null) {
//   //     if (value.isEmpty) {
//   //       return 'Field can\'t be empty';
//   //     }
//   //   }
//   //
//   //   return null;
//   // }
//   //
//   // Widget showAlert() {
//   //   if (_messageResult != null) {
//   //     return Container(
//   //       color: AppColors.whiteColor,
//   //       width: double.infinity,
//   //       padding: EdgeInsets.all(8.0),
//   //       child: Row(
//   //         children: <Widget>[
//   //           Padding(
//   //             padding: const EdgeInsets.only(right: 8.0),
//   //             child: Icon(
//   //               messageIsError == true
//   //                   ? Icons.error_outline
//   //                   : Icons.verified_outlined,
//   //               color: messageIsError == true ? Colors.red : Colors.green,
//   //             ),
//   //           ),
//   //           Expanded(
//   //             child: Text(
//   //               _messageResult,
//   //               style: TextStyle(
//   //                 color: messageIsError == true ? Colors.red : Colors.green,
//   //               ),
//   //               maxLines: 3,
//   //             ),
//   //           ),
//   //           Padding(
//   //             padding: const EdgeInsets.only(left: 8.0),
//   //             child: IconButton(
//   //               icon: Icon(Icons.close),
//   //               onPressed: () {
//   //                 setState(() {
//   //                   _messageResult = null;
//   //                 });
//   //               },
//   //             ),
//   //           )
//   //         ],
//   //       ),
//   //     );
//   //   }
//   //   return const SizedBox(
//   //     height: 0,
//   //   );
//   // }
// }
