import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/content_settings.dart';
import '../pages/picker_settings.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                label: const Text('Picker values'),
                onPressed: () => GoRouter.of(context).goNamed(PickerSettings.routeName),
                icon: const Icon(Icons.settings_suggest_rounded),
              ),
              const SizedBox(height: 24),
              TextButton.icon(
                label: const Text('Content values'),
                onPressed: () => GoRouter.of(context).goNamed(ContentSettings.routeName),
                icon: const Icon(Icons.notes_rounded),
              ),
            ],
          ),
        ),
      );
}
