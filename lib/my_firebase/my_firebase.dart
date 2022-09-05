part of ui_library;

class MyFirebaseSignIn {
  static Future<Map<String, dynamic>> signInWithGoogle() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    User? user;
    Map<String, dynamic> userData = {};
    final GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await firebaseAuth.signInWithCredential(authCredential);
        user = userCredential.user;
        userData["email"] = user?.email;
        userData["name"] = user?.displayName;
        userData["profilePicture"] = user?.photoURL;
        userData["phone"] = user?.phoneNumber;
        userData["refreshToken"] = user?.refreshToken;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        } else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }

      return userData;
    } else {
      return {};
    }
  }

  static Future<Map<String, dynamic>?> signInWithFacebook() async {
    Map<String, dynamic>? userDataStore;

    final LoginResult result =
        await FacebookAuth.instance.login(permissions: []);
    if (result.status == LoginStatus.success) {
      final userData = await FacebookAuth.instance.getUserData();
      userDataStore = userData;
    }
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);
    FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    return userDataStore;
  }

//TODO Manish
  static String? signIn(String? email, String? password) {
    if ((email != null && email.isNotEmpty) &&
        (password != null && password.isNotEmpty)) {
      AuthenticationHelper()
          .signIn(email: email, password: password)
          .then((result) {
        if (result == null) {
          return "Login-SuccessFull";
        } else {
          return "Error::}";
        }
      });
    } else {
      return "Please Enter Email or Password";
    }
  }

//TODO Manish
  static String? signUp(String? email, String? password) {
    if (email != null && password != null) {
      AuthenticationHelper()
          .signUp(email: email, password: password)
          .then((result) {
        if (result == null) {
          return "SignUP-SuccessFull";
        } else {
          return "Error::$result";
        }
      });
    } else {
      return "Please Enter Email or Password";
    }
  }
}

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => _auth.currentUser;

  //SIGN UP METHOD
  Future signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  Future signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();
  }
}
