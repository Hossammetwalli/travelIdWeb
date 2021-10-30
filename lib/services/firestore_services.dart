import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> sendEmail(EmailSendModel emailSendModel) async {
    return _db
        .collection("emails")
        .doc(emailSendModel.emailId)
        .set(emailSendModel.emailSendToMap());
  }
}
