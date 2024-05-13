part of 'password_bloc.dart';

@immutable
sealed class PasswordState {}

final class PasswordInitial extends PasswordState {}

final class PasswordLoadedState extends PasswordState{
  final bool? onTap;
  PasswordLoadedState({this.onTap});
}
