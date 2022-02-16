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
                loaded: (pending, _) => _PickerListSliver(contentList: pending),
                orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              ),
            ),
            BlocBuilder<PickerBloc, PickerState>(
              builder: (context, state) => state.maybeWhen(
                loaded: (_, previous) => _PickerListSliver(contentList: previous),
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
  final focusNode = FocusNode();

  @override
  void initState() {
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                autofocus: true,
                controller: controller,
                focusNode: focusNode,
                decoration: const InputDecoration(hintText: 'Picker value'),
                onChanged: (value) => setState(() {}),
                onSubmitted: (value) => _submit(value),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: OutlinedButton.icon(
                    onPressed: controller.text.isNotEmpty ? () => _submit(controller.text) : null,
                    icon: const Icon(Icons.add),
                    label: const Text('Add Item'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  void _submit(String value) {
    BlocProvider.of<PickerBloc>(context).add(PickerEvent.insert(value));

    controller.clear();
    focusNode.unfocus();
    focusNode.requestFocus();
  }
}

class _PickerListSliver extends StatelessWidget {
  final List<Picker> contentList;
  const _PickerListSliver({
    required this.contentList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, index) {
            final item = contentList[index];
            return SettingsListItem(
              hasBeenPicked: item.hasBeenPicked,
              title: item.name,
              onTogglePicked: () =>
                  BlocProvider.of<PickerBloc>(context).add(PickerEvent.togglePicked(item)),
              onDelete: () => BlocProvider.of<PickerBloc>(context).add(PickerEvent.remove(item.id)),
            );
          },
          childCount: contentList.length,
        ),
      );
}
