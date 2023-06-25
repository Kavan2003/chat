import 'package:chat/features/users/domain/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/user_modal.dart';
import 'remote_data_source.dart';

class remote_data_source_impl extends remote_data_source {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  remote_data_source_impl(
      {required this.firebaseFirestore,
      required this.firebaseAuth,
      required this.googleSignIn});
  @override
  Future<void> forgotPassword(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Stream<List<User_Entity>> getAlluser(User_Entity user) {
    final UserCollection = firebaseFirestore.collection("users");
    return UserCollection.where("uid", isNotEqualTo: user.uid)
        .snapshots()
        .map((event) {
      return event.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    });
  }

  @override
  Future<void> getCreateCurrentUser(User_Entity user) async {
    final userCollection = firebaseFirestore.collection("users");

    final uid = await getCurrentUId();

    userCollection.doc(uid).get().then((userDoc) {
      if (!userDoc.exists) {
        final newUser = UserModel(
          email: user.email,
          uid: uid,
          status: user.status,
          profileUrl: user.profileUrl,
          name: user.name,
        ).toDocument();

        userCollection.doc(uid).set(newUser);
      } else {
        print("User already exists");
        return;
      }
    });
  }

  @override
  Future<String> getCurrentUId() async => firebaseAuth.currentUser!.uid;

  @override
  Stream<List<User_Entity>> getSingleUser(User_Entity user) {
    final UserCollection = firebaseFirestore.collection("users");
    return UserCollection.limit(1)
        .where("uid", isEqualTo: user.uid)
        .snapshots()
        .map((querySnap) {
      final result =
          querySnap.docs.map((doc) => UserModel.fromSnapshot(doc)).toList();
      return result;
    });
  }

  @override
  Future<void> getUpdateUser(User_Entity user) async {
    final Usercollection = firebaseFirestore.collection("users");
    Map<String, dynamic> userinfo = Map();
    if (user.profileUrl != null && user.profileUrl != "") {
      userinfo["profileUrl"] = user.profileUrl;
    }
    if (user.name != null && user.name != "") {
      userinfo["name"] = user.name;
    }
    if (user.status != null && user.status != "") {
      userinfo["status"] = user.status;
    }
    await Usercollection.doc(user.uid).update(userinfo);
  }

  @override
  Future<void> googleAuth() {
    // TODO: implement googleAuth
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignIn() async {
    return firebaseAuth.currentUser?.uid != null;
  }

  @override
  Future<void> signIn(User_Entity user) async {
    await firebaseAuth.signInWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }

  @override
  Future<void> signOut() async {
    firebaseAuth.signOut();
  }

  @override
  Future<void> signUp(User_Entity user) async {
    await firebaseAuth
        .createUserWithEmailAndPassword(
            email: user.email!, password: user.password!)
        .then((value) {
      getCreateCurrentUser(user);
    });
  }
}
