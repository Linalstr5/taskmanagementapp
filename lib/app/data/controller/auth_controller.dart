import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController{
  Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  print(googleUser!.email);
  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance
  .signInWithCredential(credential)
  .then((value)) => Get.offAllNamed(Routes.HOME);
}

// firebase
CollectionReference users = firestore.collection('users');

  final cekUsers = await users.doc (googleUser.email).get();
  if (!cekUsers.exist) {
    users.doc(googleUser.email).set({
      'uid': _userCredential.user!.uid,
      'name': googleUser.displayName,
      'email': googleUser.email,
      'photo': googleUser.photoUrl,
      'createdAt': _userCredential!.user!.metadata.creationTime.toString(),
      'lastLoginAt': 
            _userCredential!.user!.metadata.creationTime.toString(),
      // 'list_cari': [L,LI,LIN,LINA]
    }),
  } else {
    users.doc(googleUser.email).set({
      'lastLoginAt':
      _userCredential!.user!.metadata.creationTime.toString(),
    });
  }
  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }
}