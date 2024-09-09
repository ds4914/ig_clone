

part of 'tab_bloc.dart';

abstract class TabState {}

class TabInitial extends TabState {
   int index;

  TabInitial(this.index);
}
