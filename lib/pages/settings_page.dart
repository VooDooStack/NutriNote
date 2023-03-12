import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () => context.read<AppBloc>().add(AuthenticationLogoutRequested()),
          title: const Text('Logout'),
          trailing: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
