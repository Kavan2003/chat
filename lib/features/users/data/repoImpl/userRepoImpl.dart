import 'package:chat/features/users/domain/user_entity.dart';

import '../../domain/User_repo/user_repo.dart';
import '../remote_data_source/remote_data_source.dart';

class reopImpl implements UserRepo {
  final remote_data_source remoteDataSource;

  reopImpl({required this.remoteDataSource});

  @override
  Future<void> forgotPassword(String email) async =>
      remoteDataSource.forgotPassword(email);

  @override
  Stream<List<User_Entity>> getAllUsers(User_Entity user) =>
      remoteDataSource.getAlluser(user);

  @override
  Future<void> getCreateCurrentUser(User_Entity user) async =>
      remoteDataSource.getCreateCurrentUser(user);

  @override
  Future<String> getCurrentUId() async => remoteDataSource.getCurrentUId();

  @override
  Stream<List<User_Entity>> getSingleUser(User_Entity user) =>
      remoteDataSource.getSingleUser(user);

  @override
  Future<void> getUpdateUser(User_Entity user) async =>
      remoteDataSource.getUpdateUser(user);

  @override
  Future<void> googleAuth() async => remoteDataSource.googleAuth();

  @override
  Future<bool> isSignIn() async => remoteDataSource.isSignIn();

  @override
  Future<void> signIn(User_Entity user) async => remoteDataSource.signIn(user);

  @override
  Future<void> signOut() async => remoteDataSource.signOut();

  @override
  Future<void> signUp(User_Entity user) async => remoteDataSource.signUp(user);
}
