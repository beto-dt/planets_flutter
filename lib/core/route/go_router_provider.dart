import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:planets_flutter/core/route/route_name.dart';
import 'package:planets_flutter/features/login/presentation/ui/login_screen.dart';
import 'package:planets_flutter/features/signup/presentation/ui/signup_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: signUpRoute,
        builder: (context, state) => const SignUpScreen(),
      ),
    ]
  );
});
