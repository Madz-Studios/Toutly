import 'package:Toutly/core/cubits/auth/auth_cubit.dart';
import 'package:Toutly/core/cubits/sign/sign_cubit.dart';
import 'package:Toutly/core/di/injector.dart';
import 'package:Toutly/shared/constants/app_constants.dart';
import 'package:Toutly/shared/util/app_size_config.dart';
import 'package:Toutly/shared/widgets/buttons/action_button.dart';
import 'package:Toutly/shared/widgets/text_fields/sign_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatefulWidget {
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _signCubit = getIt<SignCubit>();
  final _authCubit = getIt<AuthCubit>();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  void _onEmailChanged() {
    _signCubit.emailChanged(_emailController.text);
  }

  void _onPasswordChanged() {
    _signCubit.passwordChanged(_passwordController.text);
  }

  void _onFormSubmitted() {
    if (isPopulated) {
      _signCubit.signInWithEmailPasswordPressed(
          _emailController.text, _passwordController.text);
    }
  }

  bool isSignInButtonEnabled(SignState state) {
    return state.isSignInFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  Widget build(BuildContext context) {
    final appSizeConfig = AppSizeConfig(context);
    return BlocConsumer<SignCubit, SignState>(
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
                    Text('Signing In...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          _authCubit.signedIn();
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
                  controller: _emailController,
                  textInputType: TextInputType.emailAddress,
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
                  title: 'Sign In',
                  onPressed:
                      isSignInButtonEnabled(state) ? _onFormSubmitted : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
