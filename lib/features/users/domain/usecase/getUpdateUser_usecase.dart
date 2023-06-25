import 'package:chat/features/users/domain/User_repo/user_repo.dart';

import '../user_entity.dart';

class getUpdateUser_usecase {
  final UserRepo repository;

  getUpdateUser_usecase(this.repository);

  Future<void> call(User_Entity user) {
    return repository.getUpdateUser(user);
  }
}
