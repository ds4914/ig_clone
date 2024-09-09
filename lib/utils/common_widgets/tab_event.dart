part of 'tab_bloc.dart';

abstract class TabEvent {}

class TabChange extends TabEvent {
  final int index;

  TabChange(this.index);
}
