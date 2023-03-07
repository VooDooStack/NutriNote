import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrinote/core/repository/authentication_repository.dart';
import 'package:nutrinote/core/state/app/app_bloc.dart';

class StateProviders extends StatelessWidget {
  final Widget child;
  const StateProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
            create: (context) => AuthenticationRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            create: (context) => AppBloc(
                authenticationRepository:
                    context.read<AuthenticationRepository>())
              ..add(AuthenticationPersistRequested()),
          ),
        ],
        child: child,
      ),
    );
  }
}
