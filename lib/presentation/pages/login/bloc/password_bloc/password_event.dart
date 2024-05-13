part of 'password_bloc.dart';

@immutable
sealed class PasswordEvent {}


class OnTapEvent extends PasswordEvent{
  final bool? onTap;
  OnTapEvent({this.onTap});
}