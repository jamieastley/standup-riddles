import 'package:flutter/material.dart';

class SettingsListItem extends StatelessWidget {
  final bool hasBeenPicked;
  final String title;
  final String? subtitle;
  final VoidCallback onTogglePicked;
  final VoidCallback onDelete;

  const SettingsListItem({
    required this.hasBeenPicked,
    required this.title,
    required this.onTogglePicked,
    required this.onDelete,
    this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        enabled: !hasBeenPicked,
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: hasBeenPicked ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: subtitle != null && (subtitle?.isNotEmpty ?? false)
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  subtitle!,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    decoration: hasBeenPicked ? TextDecoration.lineThrough : null,
                  ),
                ),
              )
            : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: onTogglePicked,
              icon: Icon(
                hasBeenPicked ? Icons.undo : Icons.done,
                color: Colors.green,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
            ),
          ],
        ),
      );
}
