import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets_flutter/common/extension/string_hardcoded.dart';
import 'package:planets_flutter/common/style/dimens.dart';
import 'package:planets_flutter/gen/assets.gen.dart';

class LoginWith extends ConsumerWidget {
  const LoginWith({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      Text(
        "or login with".hardcoded,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: kSmall),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Assets.images.google.svg(
              width: 32,
              height: 32,
            ),
            onPressed: () {
              // Handle Google login
            },
          ),
          const SizedBox(width: kMedium),
          IconButton(
            icon: Assets.images.apple.svg(
              width: 32,
              height: 32,
            ),
            onPressed: () {
              // Handle Apple login
            },
          ),
        ],
      ),
    ]);
  }
}
