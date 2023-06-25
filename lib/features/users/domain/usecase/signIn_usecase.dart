import 'package:chat/features/users/domain/User_repo/user_repo.dart';

import '../user_entity.dart';

class SignInUseCase {
  final UserRepo repository;

  SignInUseCase({required this.repository});

  Future<void> call(User_Entity user) {
    return repository.signIn(user);
  }
}
