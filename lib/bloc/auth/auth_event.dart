part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PerformLogin extends AuthEvent {
  final String userName;
  final String password;
  PerformLogin({
    required this.userName,
    required this.password,
  });
  @override
  List<Object?> get props => [userName, password];
}

class PerformRegister extends AuthEvent {
  final String userName;
  final String password;
  final String fullName;
  final String email;
  final int phoneNumber;
  final String imageUrl;
  PerformRegister(
      {required this.userName,
      required this.password,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.imageUrl});
  @override
  List<Object?> get props =>
      [userName, password, fullName, email, phoneNumber, imageUrl];
}
