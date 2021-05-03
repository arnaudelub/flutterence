import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterence/group/bloc/group_bloc.dart';
import 'package:flutterence/home/widgets/group_creation_container.dart';
import 'package:flutterence/home/widgets/horizontal_group_list.dart';
import 'package:flutterence/injections.dart';
import 'package:flutterence/splash/bloc/auth_bloc.dart';
import 'package:flutterence/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutterence/utils/theme/style.dart';
import 'package:user_repository/user_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          context.router.replace(const LoginPageRoute());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutterence'), // Logo should go there
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () => print("Go to user profile page"),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage(getIt<IUserRepository>().user.avatar!),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app, color: Colors.white),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.logout());
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(height: mediumSpace),
            SizedBox(
              height: 100,
              child: HorizontalGroupList(),
            ),
            GroupCreationContainer(),
          ],
        ),
      ),
    );
  }
}
