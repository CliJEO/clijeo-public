import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_app_state.freezed.dart';

@freezed
abstract class MainAppState with _$MainAppState {
  const factory MainAppState.authenticated() = _MainAppStateAuthenticated;
  const factory MainAppState.unauthenticated() = _MainAppStateUnauthenticated;
  const factory MainAppState.loading() = _MainAppStateLoading;
  const factory MainAppState.error(String error) = _MainAppStateError;
}
