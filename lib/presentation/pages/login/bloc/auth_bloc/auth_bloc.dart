import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:newproject/data/models/login_response_model.dart';
import 'package:newproject/data/repositories/login_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      final response =
          await AuthRepo().login(email: event.email, userName: event.username, password: event.password, onSuccess: () {}, onError: () {});
      emit(LoginLoadedState(loginResponseModel: response));
    });
  }
}
