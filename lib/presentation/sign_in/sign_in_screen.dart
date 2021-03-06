import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injection.dart';
import 'widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: BlocProvider(
        create: (_) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
