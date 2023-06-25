import 'package:chat/features/users/domain/user_entity.dart';

import '../User_repo/user_repo.dart';

class getCreateCurrentUser_usecase {
  final UserRepo userRepository;

  getCreateCurrentUser_usecase({required this.userRepository});

  Future<void> call(User_Entity user) async {
    return userRepository.getCreateCurrentUser(user);
  }
}
