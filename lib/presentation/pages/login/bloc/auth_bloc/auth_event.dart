part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent{
  final String? username;
  final String? email;
  final String? password;
  LoginEvent({this.email,this.password,this.username});
}