import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AdminRequestModel {
  final String documentId;
  final String propertyId;
  final String propertyCategory;
  final String webSiteUrl;
  final String propertyName;
  final String country;
  final String city;
  final String telephone;
  final String infoEmail;
  final String contactName;
  final bool approved;
  final DateTime timeStamp;

  AdminRequestModel({
    @required this.documentId,
    @required this.propertyId,
    @required this.propertyCategory,
    @required this.webSiteUrl,
    @required this.propertyName,
    @required this.country,
    @required this.city,
    @required this.telephone,
    @required this.infoEmail,
    @required this.contactName,
    @required this.approved,
    @required this.timeStamp,
  });

  Map<String, dynamic> adminRequestModelToMap() => {
        PropertyFireStore.documentId: documentId,
        PropertyFireStore.propertyId: propertyId,
        PropertyFireStore.propertyCategory: propertyCategory,
        PropertyFireStore.propertyWebsite: webSiteUrl,
        PropertyFireStore.propertyName: propertyName,
        PropertyFireStore.country: country,
        PropertyFireStore.city: city,
        PropertyFireStore.telephone: telephone,
        PropertyFireStore.infoEmail: infoEmail,
        PropertyFireStore.contactName: contactName,
        PropertyFireStore.approved: approved,
        PropertyFireStore.timeStamp: timeStamp,
      };

  AdminRequestModel.fromFirestore(Map<String, dynamic> firestore)
      : documentId = firestore[PropertyFireStore.documentId],
        propertyId = firestore[PropertyFireStore.propertyId],
        propertyCategory = firestore[PropertyFireStore.propertyCategory],
        propertyName = firestore[PropertyFireStore.propertyName],
        webSiteUrl = firestore[PropertyFireStore.propertyWebsite],
        country = firestore[PropertyFireStore.country],
        city = firestore[PropertyFireStore.city],
        telephone = firestore[PropertyFireStore.telephone],
        infoEmail = firestore[PropertyFireStore.infoEmail],
        contactName = firestore[PropertyFireStore.contactName],
        timeStamp = firestore[PropertyFireStore.timeStamp],
        approved = firestore[PropertyFireStore.approved];
}
