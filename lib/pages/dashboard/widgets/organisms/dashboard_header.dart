import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrinote/core/models/app_user_model.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(radius: 25),
        const SizedBox(width: 20),
        BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            AppUser user = state.user ?? AppUser.empty as AppUser;

            return Text.rich(
              TextSpan(
                text: 'Hello, ',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                children: [
                  TextSpan(
                    text: '${user.username}\n',
                  ),
                  TextSpan(
                    text: 'Your weight today is 260lbs',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            );
          },
        ),
        const Spacer(),
        FaIcon(
          FontAwesomeIcons.bell,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ],
    );
  }
}
