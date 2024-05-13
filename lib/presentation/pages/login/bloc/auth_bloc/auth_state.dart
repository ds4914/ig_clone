part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}


class LoginLoadedState extends AuthState{
  final LoginResponseModel? loginResponseModel;
  LoginLoadedState({this.loginResponseModel});
}