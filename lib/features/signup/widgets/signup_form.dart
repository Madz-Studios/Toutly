import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  final bool isAnonymous;
  SignUpForm({
    @required this.isAnonymous,
  });
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final _signUpCubit = getIt<SignCubit>();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    _nameController.addListener(_onNameChanged);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  bool get isPopulated =>
      _emailController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty &&
      _nameController.text.isNotEmpty;

  void _onEmailChanged() {
    _signUpCubit.emailChanged(_emailController.text);
  }

  void _onPasswordChanged() {
    _signUpCubit.passwordChanged(_passwordController.text);
  }

  void _onNameChanged() {
    _signUpCubit.nameChanged(_nameController.text);
  }

  bool isSignUpButtonEnabled(SignState state) {
    return state.isSignUpFormValid && isPopulated && !state.isSubmitting;
  }

  void _onFormSubmitted() {
    if (widget.isAnonymous) {
      _signUpCubit.linkWithEmailPassword(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
      );
    } else {
      _signUpCubit.signUpWithNameEmailPasswordPressed(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocBuilder<SignCubit, SignState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: appSizeConfig.safeBlockHorizontal * 5,
          ),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SignTextFormField(
                  controller: _nameController,
                  textInputType: TextInputType.text,
                  validator: (_) {
                    return !state.isNameValid
                        ? 'Name should have 4 - 30 characters.'
                        : null;
                  },
                  hintText: "Name",
                  obscureText: false,
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2.5,
                ),
                SignTextFormField(
                  controller: _emailController,
                  textInputType: TextInputType.text,
                  validator: (_) {
                    return !state.isEmailValid ? 'Invalid Email' : null;
                  },
                  hintText: "Email",
                  obscureText: false,
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2.5,
                ),
                SignTextFormField(
                  controller: _passwordController,
                  textInputType: TextInputType.text,
                  validator: (_) {
                    return !state.isPasswordValid
                        ? 'Password should have 8 - 16 characters'
                        : null;
                  },
                  hintText: "Password",
                  obscureText: true,
                ),
                SizedBox(
                  height: appSizeConfig.safeBlockVertical * 2.5,
                ),
                ActionButton(
                  title: 'Sign up',
                  onPressed:
                      isSignUpButtonEnabled(state) ? _onFormSubmitted : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
