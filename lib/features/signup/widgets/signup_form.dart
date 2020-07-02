import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/features/authentication/bloc/authentication_bloc.dart';
import 'package:Toutly/shared/bloc/sign/sign_bloc.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// a login form
class SignUpForm extends StatefulWidget {
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final _authenticationBloc = getIt<AuthenticationBloc>();
  final _signUpBloc = getIt<SignBloc>();

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
    _signUpBloc.add(
      SignEvent.emailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _signUpBloc.add(
      SignEvent.passwordChanged(password: _passwordController.text),
    );
  }

  void _onNameChanged() {
    _signUpBloc.add(
      SignEvent.nameChanged(name: _nameController.text),
    );
  }

  bool isSignUpButtonEnabled(SignState state) {
    return state.isSignUpFormValid && isPopulated && !state.isSubmitting;
  }

  void _onFormSubmitted() {
    _signUpBloc.add(
      SignEvent.signUpWithNameEmailPasswordPressed(
        email: _emailController.text,
        password: _passwordController.text,
        name: _nameController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<SignBloc, SignState>(
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text('${state.info}'),
                    ),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                backgroundColor: kPrimaryColor,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Signing Up...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          _authenticationBloc.add(AuthenticationEvent.signedIn());
          Navigator.of(context).pop();
        }
      },
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
