import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AdminsModel {
  final String documentId;
  final String propertyId;
  final String propertyName;
  final String contactName;
  final String propertyCategory;
  final bool admin;
  final String password;
  final DateTime timeStamp;

  AdminsModel({
    @required this.propertyCategory,
    @required this.documentId,
    @required this.propertyId,
    @required this.propertyName,
    @required this.contactName,
    @required this.admin,
    @required this.password,
    @required this.timeStamp,
  });

  Map<String, dynamic> adminsModelToMap() => {
        PropertyFireStore.documentId: documentId,
        PropertyFireStore.propertyCategory: propertyCategory,
        PropertyFireStore.propertyId: propertyId,
        PropertyFireStore.propertyName: propertyName,
        PropertyFireStore.contactName: contactName,
        PropertyFireStore.isAdmin: admin,
        PropertyFireStore.password: password,
        PropertyFireStore.timeStamp: timeStamp,
      };

  AdminsModel.fromFirestore(Map<String, dynamic> firestore)
      : documentId = firestore[PropertyFireStore.documentId],
        propertyId = firestore[PropertyFireStore.propertyId],
        propertyName = firestore[PropertyFireStore.propertyName],
        propertyCategory = firestore[PropertyFireStore.propertyCategory],
        contactName = firestore[PropertyFireStore.contactName],
        admin = firestore[PropertyFireStore.isAdmin],
        password = firestore[PropertyFireStore.password],
        timeStamp = firestore[PropertyFireStore.timeStamp];
}
