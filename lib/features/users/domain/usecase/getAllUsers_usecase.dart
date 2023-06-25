// import 'package:flutter_group_chat/features/user/domain/entities/user_entity.dart';
// import 'package:flutter_group_chat/features/user/domain/repository/user_repository.dart';

import '../User_repo/user_repo.dart';
import '../user_entity.dart';

class GetAllUsersUseCase {
  final UserRepo repository;

  GetAllUsersUseCase({required this.repository});

  Stream<List<User_Entity>> call(User_Entity user) {
    return repository.getAllUsers(user);
  }
}
