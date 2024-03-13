import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:bdl_demo/core/extensions/context_extensions.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/core/presentation/widgets/error_view.dart';
import 'package:bdl_demo/features/auth/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(signInUseCasePovider).call();
    final currentUser = ref.watch(currentUserProvider);
    return AuthenticatedView(
      child: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(AppTheme.gridSpacing),
            child: currentUser.when(
              data: (user) {
                if (user == null) {
                  return Text(
                    "Not signed in.",
                    style: context.textTheme.titleLarge,
                  );
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Hello ${user.userName}",
                      style: context.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    AppTheme.gridDividerHorizontal,
                    const SignOutButton(),
                  ],
                );
              },
              error: (error, stackTrace) => ErrorView(error),
              loading: () => Container(),
            ),
          ),
        ),
      ),
    );
  }
}
