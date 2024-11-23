part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final bool needPop;
  final bool isLoading;
  final User? user;

  const ProfileState({required this.needPop, required this.isLoading, this.user});

  ProfileState copyWith({
    bool? needPop,
    bool? isLoading,
    User? user,
  }) {
    return ProfileState(
      needPop: needPop ?? this.needPop,
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [
        needPop,
        isLoading,
        user,
      ];
}
