import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/picker/picker_bloc.dart';
import '../domain/picker.dart';
import '../widgets/settings_list_item.dart';

class PickerSettings extends StatelessWidget {
  static const routeName = 'pickerSettings';
  static const routePath = 'pickerSettings';

  const PickerSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            const _AppBarSliver(),
            const _InputRowSliver(),
            BlocBuilder<PickerBloc, PickerState>(
              builder: (context, state) => state.maybeWhen(
                loaded: (pending, _) {
                  if (pending.isNotEmpty) {
                    return const SliverToBoxAdapter(
                      child: Center(
                        child: Padding(padding: EdgeInsets.all(8), child: Text('Pending')),
                      ),
                    );
                  } else {
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  }
                },
                orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              ),
            ),
            BlocBuilder<PickerBloc, PickerState>(
              builder: (context, state) => state.maybeWhen(
                loaded: (pending, _) => _PickerSliverList(contentList: pending),
                orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              ),
            ),
            BlocBuilder<PickerBloc, PickerState>(
              builder: (context, state) => state.maybeWhen(
                loaded: (_, previous) {
                  if (previous.isNotEmpty) {
                    return const SliverToBoxAdapter(
                      child: Center(
                        child: Padding(padding: EdgeInsets.all(8), child: Text('Picked')),
                      ),
                    );
                  } else {
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  }
                },
                orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              ),
            ),
            BlocBuilder<PickerBloc, PickerState>(
              builder: (context, state) => state.maybeWhen(
                loaded: (_, previous) => _PickerSliverList(contentList: previous),
                orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              ),
            ),
          ],
        ),
      );
}

class _AppBarSliver extends StatelessWidget {
  const _AppBarSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SliverAppBar(
        pinned: true,
        floating: true,
        title: Text('Add picker values'),
      );
}

class _InputRowSliver extends StatefulWidget {
  const _InputRowSliver({Key? key}) : super(key: key);

  @override
  State<_InputRowSliver> createState() => _InputRowSliverState();
}

class _InputRowSliverState extends State<_InputRowSliver> {
  late final TextEditingController controller;
  late final FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 650,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    autofocus: true,
                    controller: controller,
                    focusNode: focusNode,
                    decoration: const InputDecoration(hintText: 'Comma-separated values...'),
                    onChanged: (value) => setState(() {}),
                    onSubmitted: (value) => _submit(value),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: OutlinedButton.icon(
                        onPressed:
                            controller.text.isNotEmpty ? () => _submit(controller.text) : null,
                        icon: const Icon(Icons.add),
                        label: const Text('Add Picker(s)'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _submit(String value) {
    context.read<PickerBloc>().add(PickerEvent.insert(value));

    controller.clear();
    focusNode.unfocus();
    focusNode.requestFocus();
  }
}

class _PickerSliverList extends StatelessWidget {
  final List<Picker> contentList;
  const _PickerSliverList({
    required this.contentList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, index) {
            final item = contentList[index];
            return SettingsListItem(
              title: item.name,
              hasBeenPicked: item.hasBeenPicked,
              onTogglePicked: () => context.read<PickerBloc>().add(PickerEvent.togglePicked(item)),
              onDelete: () => context.read<PickerBloc>().add(PickerEvent.remove(item.id)),
            );
          },
          childCount: contentList.length,
        ),
      );
}
