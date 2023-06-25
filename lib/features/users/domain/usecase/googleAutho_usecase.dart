// ignore: file_names
import 'package:chat/features/users/domain/User_repo/user_repo.dart';
// import 'package:flutter/material.dart';

class googleAutho_usecase {
  final UserRepo userRepository;

  googleAutho_usecase({required this.userRepository});

  Future<void> call() async {
    return userRepository.googleAuth();
  }
}
