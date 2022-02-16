import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/content/content_bloc.dart';
import '../bloc/picker/picker_bloc.dart';
import '../domain/picker.dart';
import 'confetti.dart';

class PickedDialog extends StatefulWidget {
  final Picker picker;
  final bool enableConfetti;
  final Duration confettiDuration;

  const PickedDialog({
    required this.picker,
    this.enableConfetti = true,
    this.confettiDuration = const Duration(milliseconds: 500),
    Key? key,
  }) : super(key: key);

  @override
  State<PickedDialog> createState() => _PickedDialogState();
}

class _PickedDialogState extends State<PickedDialog> {
  late final ConfettiController confettiController;

  @override
  void initState() {
    confettiController = ConfettiController(duration: widget.confettiDuration);
    if (widget.enableConfetti) {
      confettiController.play();
    }
    super.initState();
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 650),
              child: AlertDialog(
                title: Center(
                  child: Text(
                    widget.picker.name,
                    style: Theme.of(context).textTheme.button!.copyWith(fontSize: 30),
                  ),
                ),
                content: AnimatedSize(
                  duration: const Duration(milliseconds: 250),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      _Content(),
                      _Answer(),
                    ],
                  ),
                ),
                actions: <Widget>[
                  _ButtonsRow(picker: widget.picker),
                ],
              ),
            ),
          ),
          Align(child: ConfettiBlast(controller: confettiController, direction: 0)),
          Align(child: ConfettiBlast(controller: confettiController, direction: 0)),
        ],
      );
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentBloc, ContentState>(
        builder: (context, state) => state.maybeWhen(
            loaded: (contentList) => _PaddedTextButton(
                  onPressed: () =>
                      BlocProvider.of<ContentBloc>(context).add(const ContentEvent.pickRandom()),
                  text: 'Show Riddle',
                ),
            selected: (selectedContent, contentList) =>
                _ContentSection(content: selectedContent.content),
            answerRevealed: (selectedContent, contentList) =>
                _ContentSection(content: selectedContent.content),
            orElse: () => const SizedBox.shrink()),
      );
}

class _Answer extends StatelessWidget {
  const _Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentBloc, ContentState>(
        builder: (context, state) => state.maybeWhen(
            selected: (selectedContent, contentList) => _PaddedTextButton(
                  onPressed: () =>
                      BlocProvider.of<ContentBloc>(context).add(const ContentEvent.revealAnswer()),
                  text: 'Reveal answer',
                ),
            answerRevealed: (selectedContent, contentList) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: _AnswerSection(content: selectedContent.answer!),
                ),
            orElse: () => const SizedBox.shrink()),
      );
}

class _ContentSection extends StatelessWidget {
  final String content;
  const _ContentSection({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          content,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      );
}

class _AnswerSection extends StatelessWidget {
  final String content;
  const _AnswerSection({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        content,
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontStyle: FontStyle.italic,
            ),
      );
}

class _ButtonsRow extends StatelessWidget {
  final Picker picker;
  const _ButtonsRow({
    required this.picker,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<ContentBloc, ContentState>(
        builder: (context, state) => state.maybeWhen(
            answerRevealed: (selectedContent, contentList) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _PaddedTextButton(
                          text: 'Close', onPressed: () => Navigator.of(context).pop()),
                      _PaddedTextButton(
                        onPressed: () {
                          BlocProvider.of<ContentBloc>(context)
                              .add(ContentEvent.toggleAsked(selectedContent));
                          BlocProvider.of<PickerBloc>(context)
                              .add(PickerEvent.togglePicked(picker));

                          Navigator.of(context).pop();
                        },
                        text: 'Mark as asked',
                      ),
                    ],
                  ),
                ),
            empty: () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _PaddedTextButton(text: 'Close', onPressed: () => Navigator.of(context).pop()),
                    _PaddedTextButton(
                        text: 'Mark as picked',
                        onPressed: () {
                          context.read<PickerBloc>().add(PickerEvent.togglePicked(picker));
                          Navigator.of(context).pop();
                        }),
                  ],
                ),
            orElse: () => const SizedBox.shrink()),
      );
}

class _PaddedTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _PaddedTextButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: TextButton(onPressed: onPressed, child: Text(text.toUpperCase())),
      );
}
