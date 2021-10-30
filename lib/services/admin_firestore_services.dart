import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
import 'package:webapptrial/widgets/export_widget.dart';

class AdminFirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  AuthBloc _auth = AuthBloc();
  var uuid = Uuid();

  Future<void> setFreelancerAccessRequest(
      FreelancerRequestModel freelancerRequestModel) async {
    return _db
        .collection(CollectionsFireStore.freelancerRequestAccess)
        .doc(uuid.v4())
        .set(freelancerRequestModel.freelancerRequestModelToMap());
  }

  // Request user subscription
  Future<void> userSubscriptionRequest(UserModel userModel) async {
    return _db
        .collection("userSubscriptionRequest")
        .doc(uuid.v4())
        .set(userModel.userSubscriptionToMap());
  }

  // Request Admin access form to save

  Future<void> setAdminAccessRequest(AdminRequestModel adminRequest) async {
    return _db
        .collection(CollectionsFireStore.requestAccess)
        .doc(uuid.v4())
        .set(adminRequest.adminRequestModelToMap());
  }

  // Request Admin access form to save

  Future<void> setAdmins(AdminsModel adminsModel) async {
    return _db
        .collection(CollectionsFireStore.admin)
        .doc(uuid.v4())
        .set(adminsModel.adminsModelToMap());
  }

  Future<AdminsModel> getAdmins() async {
    final uid = await _auth.getCurrentUID();
    return await _db
        .collection(CollectionsFireStore.admin)
        .doc(uid)
        .get()
        .then((snapshot) => AdminsModel.fromFirestore(snapshot.data()));
  }

// Future<ImagesModel> getImagesFromFirestore() async {
//   final uid = "VkNWwp7WqBMxcCq1xFmo";
//
//   return await _db
//       .collection("webpageImages")
//       .doc(uid)
//       .get()
//       .then((snapshot) => ImagesModel.fromFirestore(snapshot.data()));
// }
}
