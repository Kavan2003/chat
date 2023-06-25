import 'package:equatable/equatable.dart';

class User_Entity extends Equatable {
  final String? email;
  final String? name;
  final String? uid;
  final String? status;
  final String? profileUrl;
  final String? password;

  User_Entity(
      {this.email,
      this.name,
      this.uid,
      this.status,
      this.profileUrl,
      this.password});
  @override
  // TODO: implement props
  List<Object?> get props => [email, name, uid, status, profileUrl, password];
  // throw UnimplementedError(email, name, uid, status, profileUrl, password);
}
