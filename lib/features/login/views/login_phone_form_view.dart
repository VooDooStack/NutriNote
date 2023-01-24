import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nutrinote/app/repository/authentication_repository.dart';
import 'package:nutrinote/widgets/atoms/nn_icon_button.dart';
import 'package:nutrinote/widgets/atoms/nn_text_field.dart';

class LoginPhoneFormView extends StatelessWidget {
  const LoginPhoneFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Column(
      children: [
        const SizedBox(height: 50),
        const NNTextField(
          labelText: 'Phone Number',
          icon: Icon(Icons.phone),
        ),
        const SizedBox(height: 50),
        NNTextField(
          labelText: 'Password',
          icon: Icon(Icons.remove_red_eye, color: Theme.of(context).colorScheme.secondary),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Text('Forgot Password?', style: Theme.of(context).textTheme.bodySmall),
        ),
        const SizedBox(height: 50),
        NNIconButton(
          icon: null,
          text: 'Login',
          isOutline: false,
          buttonColor: Theme.of(context).colorScheme.primary,
          textColor: Theme.of(context).colorScheme.onPrimary,
          onTap: () {
            if (formKey.currentState?.isValid == true) {
              context.read<AuthenticationRepository>().logIn(
                    email: formKey.currentState?.fields['Email']?.value,
                    password: formKey.currentState?.fields['Password']?.value,
                  );
            }
          },
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
