// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signupModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignupModel? signupModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        isShowPassword,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
