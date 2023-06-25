import 'package:chat/features/users/domain/User_repo/user_repo.dart';

class IsSignInUseCase {
  final UserRepo repository;

  IsSignInUseCase({required this.repository});

  Future<bool> call() async {
    return repository.isSignIn();
  }
}
