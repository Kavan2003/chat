import 'package:chat/features/users/domain/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: empty_constructor_bodies
class UserModel extends User_Entity {
  UserModel(
      {String? email,
      String? name,
      String? uid,
      String? status,
      String? profileUrl,
      String? password})
      : super(
            email: email,
            name: name,
            uid: uid,
            status: status,
            profileUrl: profileUrl,
            password: password);
  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;

    return UserModel(
        name: snapshotMap['name'],
        profileUrl: snapshotMap['profileUrl'],
        status: snapshotMap['status'],
        uid: snapshotMap['uid'],
        email: snapshotMap['email']);
  }

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "status": status,
      "profileUrl": profileUrl,
    };
  }
}
