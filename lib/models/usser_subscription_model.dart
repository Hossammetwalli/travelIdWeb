import 'package:flutter/material.dart';

class UserModel {
  final String userName;
  final String userEmail;
  final DateTime timeStamp;
  final bool done;

  UserModel(
      {@required this.userName,
      @required this.userEmail,
      @required this.timeStamp,
      @required this.done});

  Map<String, dynamic> userSubscriptionToMap() => {
        "userName": userName,
        "userEmail": userEmail,
        "timeStamp": timeStamp,
        "done": done,
      };
}
