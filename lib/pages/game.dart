import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../bloc/bloc/picker_selector_bloc.dart';
import '../bloc/content/content_bloc.dart';
import '../bloc/picker/picker_bloc.dart';
import '../domain/picker.dart';
import '../widgets/app_drawer.dart';
import '../widgets/hero_dialog_route.dart';
import '../widgets/picked_dialog.dart';
import 'picker_settings.dart';

class PickerPage extends StatefulWidget {
  static const routeName = 'picker';
  static const routePath = '/';

  const PickerPage({Key? key}) : super(key: key);

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  late final FixedExtentScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        drawer: const AppDrawer(),
        floatingActionButton: _SpinFAB(controller: controller),
        body: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: SafeArea(
                child: Stack(
                  children: [
                    Center(child: _PickerView(controller: controller)),
                    BlocListener<PickerSelectorBloc, PickerSelectorState>(
                      listenWhen: (previous, current) => current is PickerSelected,
                      listener: (context, state) {
                        final castState = state as PickerSelected;

                        Navigator.push(
                          context,
                          HeroDialogRoute(
                            builder: (BuildContext context) => Center(
                                child: BlocProvider<ContentBloc>(
                              create: (context) => ContentBloc(),
                              child: PickedDialog(picker: castState.picker),
                            )),
                          ),
                        );
                      },
                      child: const SizedBox.shrink(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

class _PickerWheel extends StatelessWidget {
  final FixedExtentScrollController controller;
  final List<Picker> pickers;

  const _PickerWheel({required this.controller, required this.pickers, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        key: ValueKey(pickers),
        constraints: BoxConstraints.loose(const Size(500, 100)),
        child: CupertinoPicker(
          itemExtent: 65,
          scrollController: controller,
          onSelectedItemChanged: (value) {
            debugPrint('Pos: ${controller.position.pixels}');
            context.read<PickerSelectorBloc>().add(PickerSelectorEvent.tick(
                  index: value,
                  pickers: pickers,
                ));
          },
          looping: true,
          children: pickers
              .map((e) => Text(
                    e.name,
                    key: ObjectKey(e),
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.button!.copyWith(fontSize: 50),
                  ))
              .toList(),
        ),
      );
}

class _PickerView extends StatelessWidget {
  final FixedExtentScrollController controller;

  const _PickerView({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocConsumer<PickerBloc, PickerState>(
        listenWhen: (previous, current) => current is PickerStateSelected && previous != current,
        listener: (context, state) {},
        buildWhen: (previousState, currentState) {
          if (previousState is PickerStateLoaded && currentState is PickerStateSelected) {
            return false;
          } else {
            return previousState != currentState;
          }
        },
        builder: (context, state) => state.maybeWhen(
          empty: () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('No pickers yet!'),
              const SizedBox(height: 16),
              TextButton.icon(
                onPressed: () => GoRouter.of(context).goNamed(PickerSettings.routeName),
                icon: const Icon(Icons.add),
                label: const Text('Add Pickers'),
              ),
            ],
          ),
          loaded: (pending, previous) {
            if (pending.isNotEmpty) {
              return _PickerWheel(
                key: ObjectKey(pending),
                controller: controller,
                pickers: pending,
              );
            } else {
              return Column(mainAxisSize: MainAxisSize.min, children: [
                const Text('No pending pickers left!'),
                const SizedBox(height: 16),
                TextButton.icon(
                  onPressed: () => GoRouter.of(context).goNamed(PickerSettings.routeName),
                  icon: const Icon(Icons.add),
                  label: const Text('Add Pickers'),
                ),
              ]);
            }
          },
          orElse: () => ElevatedButton.icon(
            onPressed: () => GoRouter.of(context).goNamed(PickerSettings.routeName),
            icon: const Icon(Icons.add),
            label: const Text('Add Items'),
          ),
        ),
      );
}

class _SpinFAB extends StatelessWidget {
  final FixedExtentScrollController controller;
  static const _iconSize = 48.0;

  const _SpinFAB({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<PickerBloc, PickerState>(
        builder: (context, state) => state.when(
          empty: () => const SizedBox.shrink(),
          loaded: (pending, previous) => FloatingActionButton(
            onPressed: () {
              final random = Random().nextInt(5000) + 1000;
              debugPrint('Offset: ${controller.offset}');
              controller.animateTo(
                random.toDouble() + controller.position.pixels,
                duration: const Duration(seconds: 5),
                curve: Curves.easeOut,
              );
            },
            child: const Center(child: Icon(Ionicons.dice_outline, size: _iconSize)),
          ),
          pickerSelected: (_, __, ___) => FloatingActionButton(
            onPressed: () {
              final random = Random().nextInt(5000);
              debugPrint('Offset: ${controller.offset}');
              controller.animateTo(
                random.toDouble(),
                duration: const Duration(seconds: 5),
                curve: Curves.easeOut,
              );
            },
            child: const Center(
              child: Icon(
                Ionicons.dice_outline,
                size: _iconSize,
              ),
            ),
          ),
        ),
      );
}
