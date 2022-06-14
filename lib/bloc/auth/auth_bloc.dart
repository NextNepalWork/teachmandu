import 'package:e_learning/model/auth_response.dart';
import 'package:e_learning/repo/auth_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(AuthInitial()) {
    on<PerformLogin>((event, emit) async {
      emit(AuthLoading());
      try {
        final response =
            await _authRepo.performLogin(event.userName, event.password);
        if (response.token!.isNotEmpty) {
          emit(Authenticated(response));
        } else {
          emit(UnAuthenticated("Authentication failed"));
        }
      } catch (e) {
        emit(AuthFailed(e.toString()));
      }
    });
  }
}
