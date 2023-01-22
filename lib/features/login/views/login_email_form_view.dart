import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nutrinote/app/repository/authentication_repository.dart';
import 'package:nutrinote/app/state/app/app_bloc.dart';
import 'package:nutrinote/widgets/atoms/nn_icon_button.dart';
import 'package:nutrinote/widgets/atoms/nn_text_field.dart';

class LoginEmailFormView extends StatelessWidget {
  const LoginEmailFormView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Column(
      children: [
        const SizedBox(height: 50),
        FormBuilder(
          key: formKey,
          child: Column(
            children: [
              NNTextField(
                labelText: 'Email',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
                icon: const Icon(Icons.email),
              ),
              const SizedBox(height: 50),
              NNTextField(
                labelText: 'Password',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                ]),
                icon: Icon(Icons.remove_red_eye, color: Theme.of(context).colorScheme.secondary),
              ),
            ],
          ),
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
