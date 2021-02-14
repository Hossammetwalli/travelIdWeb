import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthBloc {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  //AuthService();

  Stream<String> get onAuthStateChanged =>
      _firebaseAuth.authStateChanges().map((User user) {
        return user?.uid;
      });

  // GET User UID
  Future<String>  getCurrentUID() async {
    _firebaseAuth.currentUser.uid;
    String uid = (_firebaseAuth.currentUser).uid;
    return uid;
  }

  // GET CURRENT USER
  Future getCurrentUser() async {
    return  _firebaseAuth.currentUser;
  }

  //get the Username that a user registered **
  Future<String> getUserName() async {
    String name = ( _firebaseAuth.currentUser).displayName;
    return (name == null) ? "" : name;

  }

// Email & Password Sign up
  Future<String> createUserWithEmailAndPassword( String email, String password) async {
        await Firebase.initializeApp();

    final authResult = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),


    );


    return authResult.user.uid;
  }


  Future<String> registerWithEmailPassword(String email, String password) async {
    await Firebase.initializeApp();

    final UserCredential userCredential =
    await  _firebaseAuth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );

    return userCredential.user.uid;


  }


// Email & Password Sign in
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    return (await _firebaseAuth.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim())).user.uid;

  }

// Sign out

  signOut() async{
    return  await _firebaseAuth.signOut();
  }

  // Reset Password
  Future sendPasswordResetEmail(String email) async {
    return _firebaseAuth.sendPasswordResetEmail(email: email.trim());
  }

  // Create Anonymous User
  Future singInAnonymously() {
    return _firebaseAuth.signInAnonymously();
  }

  // Convert user from anonymous to know using email address

  Future convertUserWithEmail(
      String email, String password, String name) async {
    final currentUser = _firebaseAuth.currentUser;

    final credential = EmailAuthProvider.credential(
        email: email.trim(), password: password.trim());
    await currentUser.linkWithCredential(credential);

  }



  // LogedIn validator
  Future<bool> isUserLoggedIn() async {
    var user =  _firebaseAuth.currentUser;
    return user != null;
  }








}

// Email validator

class EmailValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Email can't be empty";
    }
    return null;
  }
}

// user name validator
class NameValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Name can't be empty";
    }
    if (value.length < 2) {
      return "Name must be at least 2 characters long";
    }
    if (value.length > 50) {
      return "Name must be less than 50 characters long";
    }
    return null;
  }
}



// user password validator

class PasswordValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Password can't be empty";
    }
    if (value.length < 6) {
      return "Password must be at least 8 characters long";
    }

    return null;
  }

}

