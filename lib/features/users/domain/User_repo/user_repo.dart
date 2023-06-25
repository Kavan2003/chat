import '../user_entity.dart';

abstract class UserRepo {
  Future<void> googleAuth();
  Future<void> getCreateCurrentUser(User_Entity user);
  Future<void> forgotPassword(String email);

  Future<bool> isSignIn();
  Future<void> signIn(User_Entity user);
  Future<void> signUp(User_Entity user);
  Future<void> signOut();
  Future<void> getUpdateUser(User_Entity user);
  Future<String> getCurrentUId();
  Stream<List<User_Entity>> getAllUsers(User_Entity user);
  Stream<List<User_Entity>> getSingleUser(User_Entity user);
}
