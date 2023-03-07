import 'package:flutter/material.dart';
import 'package:nutrinote/features/login/views/login_email_form_view.dart';
import 'package:nutrinote/features/login/views/login_phone_form_view.dart';
import 'package:nutrinote/widgets/atoms/nn_icon_button.dart';
import 'package:nutrinote/widgets/atoms/nn_tab_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.primary)),
              const SizedBox(height: 16),
              Text('We are happy to see you again. To use your account, you should log in first', style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 50),
              const Expanded(
                child: NNTabBar(
                  tabs: [Tab(text: 'Email'), Tab(text: 'Phone Number')],
                  children: [LoginEmailFormView(), LoginPhoneFormView()],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2), thickness: 1),
                  ),
                  const SizedBox(width: 10),
                  Text('Sign in with facebook or google', style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Divider(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  NNIconButton(icon: Icons.facebook, text: 'Facebook', isOutline: true),
                  Spacer(),
                  NNIconButton(icon: Icons.g_translate, text: 'Google', isOutline: true),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? ', style: Theme.of(context).textTheme.bodyMedium),
                    Text('Sign Up', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.secondary)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
