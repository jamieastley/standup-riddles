import 'package:flutter/material.dart';

class AddItemButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddItemButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OutlinedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add),
        label: const Text('Add Item'),
      );
}
