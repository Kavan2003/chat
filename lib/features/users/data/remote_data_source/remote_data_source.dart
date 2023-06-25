import '../../domain/user_entity.dart';

abstract class remote_data_source {
  Future<void> googleAuth();
  Future<void> getCreateCurrentUser(User_Entity user);
  Future<void> forgotPassword(String email);

  Future<bool> isSignIn();
  Future<void> signIn(User_Entity user);
  Future<void> signUp(User_Entity user);
  Future<void> signOut();
  Future<void> getUpdateUser(User_Entity user);
  Future<String> getCurrentUId();
  Stream<List<User_Entity>> getAlluser(User_Entity user);
  Stream<List<User_Entity>> getSingleUser(User_Entity user);
}
