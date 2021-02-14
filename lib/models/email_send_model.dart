import 'package:flutter/cupertino.dart';

class EmailSendModel {
  final String emailId;
  final String senderEmail;
  final String senderName;
  final String message;
  final DateTime timeStamp;
  final bool done;

  EmailSendModel(
      {@required this.emailId,
      @required this.senderEmail,
      @required this.senderName,
      @required this.message,
      @required this.timeStamp,
      @required this.done});

  Map<String, dynamic> emailSendToMap() => {
        "emailId": emailId,
        "senderEmail": senderEmail,
        "senderName": senderName,
        "message": message,
        "timeStamp": timeStamp.toString(),
        "done": done,
      };

  EmailSendModel.fromFirestore(Map<String, dynamic> firestore)
      : emailId = firestore["emailId"],
        senderEmail = firestore["senderEmail"],
        senderName = firestore["senderName"],
        message = firestore["message"],
        timeStamp = firestore["timeStamp"],
        done = firestore["done"];
}
