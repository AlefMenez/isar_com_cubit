part of 'splash_cubit.dart';


sealed class SplashState {}

final class SplashInitial extends SplashState {}

final class SplashLoading extends SplashState {}

final class SplashLoaded extends SplashState {}

final class SplasError extends SplashState {
  final String? error;

  SplasError({ this.error});
}
