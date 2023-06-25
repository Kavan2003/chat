import 'package:chat/features/users/domain/User_repo/user_repo.dart';

class SignOutUseCase {
  final UserRepo repository;

  SignOutUseCase({required this.repository});

  Future<void> call() async {
    return repository.signOut();
  }
}
