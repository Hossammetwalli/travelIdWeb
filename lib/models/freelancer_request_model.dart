import 'package:flutter/material.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class FreelancerRequestModel {
  final String userID;
  final String freelancerName;
  final String speciality;
  final String serviceShortDescription;
  final String whyDoYouWantToJoin;
  final String serviceDestinationCountry;
  final String businessEmail;
  final bool requestApproved;
  final DateTime timeStamp;

  FreelancerRequestModel({
    @required this.userID,
    @required this.freelancerName,
    @required this.speciality,
    @required this.serviceShortDescription,
    @required this.whyDoYouWantToJoin,
    @required this.serviceDestinationCountry,
    @required this.businessEmail,
    @required this.requestApproved,
    @required this.timeStamp,
  });

  Map<String, dynamic> freelancerRequestModelToMap() => {
        FreelancerFireStore.userID: userID,
        FreelancerFireStore.freelancerName: freelancerName,
        FreelancerFireStore.speciality: speciality,
        FreelancerFireStore.serviceShortDescription: serviceShortDescription,
        FreelancerFireStore.aboutYou: whyDoYouWantToJoin,
        FreelancerFireStore.serviceDestinationCountry:
            serviceDestinationCountry,
        FreelancerFireStore.businessEmail: businessEmail,
        FreelancerFireStore.requestApproved: requestApproved,
        FreelancerFireStore.timeStamp: timeStamp,
      };

  FreelancerRequestModel.fromFirestore(Map<String, dynamic> firestore)
      : userID = firestore[FreelancerFireStore.userID],
        freelancerName = firestore[FreelancerFireStore.freelancerName],
        speciality = firestore[FreelancerFireStore.speciality],
        serviceShortDescription =
            firestore[FreelancerFireStore.serviceShortDescription],
        whyDoYouWantToJoin = firestore[FreelancerFireStore.aboutYou],
        serviceDestinationCountry =
            firestore[FreelancerFireStore.serviceDestinationCountry],
        businessEmail = firestore[FreelancerFireStore.businessEmail],
        requestApproved = firestore[FreelancerFireStore.requestApproved],
        timeStamp = firestore[FreelancerFireStore.timeStamp].toDate();
}
