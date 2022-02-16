import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/content/content_bloc.dart';
import '../domain/content.dart';
import '../widgets/add_item_button.dart';
import '../widgets/settings_list_item.dart';

class ContentSettings extends StatelessWidget {
  static const routeName = 'contentSettings';

  const ContentSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(slivers: [
          const _AppBarSliver(),
          const _InsertContentSliver(),
          BlocBuilder<ContentBloc, ContentState>(
            builder: (context, state) => state.maybeWhen(
              loaded: (contentList) {
                if (contentList.filterOnlyPending().isNotEmpty) {
                  return _ContentListSliver(contentList: contentList.filterOnlyPending());
                } else {
                  return const SliverToBoxAdapter(child: SizedBox.shrink());
                }
              },
              orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
            ),
          ),
          BlocBuilder<ContentBloc, ContentState>(
            builder: (context, state) => state.maybeWhen(
              loaded: (contentList) {
                if (contentList.filterOnlyAsked().isNotEmpty) {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(padding: EdgeInsets.all(8), child: Text('Asked')),
                    ),
                  );
                } else {
                  return const SliverToBoxAdapter(child: SizedBox.shrink());
                }
              },
              orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
            ),
          ),
          BlocBuilder<ContentBloc, ContentState>(
            builder: (context, state) => state.maybeWhen(
              loaded: (contentList) =>
                  _ContentListSliver(contentList: contentList.filterOnlyAsked()),
              orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
            ),
          ),
        ]),
      );
}

class _AppBarSliver extends StatelessWidget {
  const _AppBarSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SliverAppBar(
        pinned: true,
        floating: true,
        title: Text('Add content'),
      );
}

class _InsertContentSliver extends StatefulWidget {
  const _InsertContentSliver({Key? key}) : super(key: key);

  @override
  __InsertContentSliverState createState() => __InsertContentSliverState();
}

class __InsertContentSliverState extends State<_InsertContentSliver> {
  late final TextEditingController contentController;
  late final TextEditingController answerController;
  final contentFocusNode = FocusNode();
  final answerFocusNode = FocusNode();

  @override
  void initState() {
    contentController = TextEditingController();
    answerController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    contentFocusNode.dispose();
    answerFocusNode.dispose();
    contentController.dispose();
    answerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverToBoxAdapter(
          child: Column(
            children: [
              TextField(
                controller: contentController,
                focusNode: contentFocusNode,
                minLines: 1,
                maxLines: 7,
                onChanged: (_) => setState(() {}),
                onSubmitted: (_) => answerFocusNode.requestFocus(),
                decoration: const InputDecoration(hintText: 'Content text...'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: answerController,
                focusNode: answerFocusNode,
                minLines: 1,
                maxLines: 7,
                onSubmitted: (_) => _submit(),
                decoration: const InputDecoration(hintText: '(Optional) answer text...'),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Theme(
                    data: Theme.of(context).copyWith(),
                    child: Builder(
                      builder: (context) => AddItemButton(
                        onPressed: contentController.text.isNotEmpty ? () => _submit() : null,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );

  void _submit() {
    BlocProvider.of<ContentBloc>(context).add(ContentEvent.insert(
      content: contentController.text,
      answer: answerController.text,
    ));

    contentController.clear();
    answerController.clear();
    contentFocusNode.requestFocus();
  }
}

class _ContentListSliver extends StatelessWidget {
  final List<Content> contentList;
  const _ContentListSliver({
    required this.contentList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, index) {
            final item = contentList[index];
            return SettingsListItem(
              hasBeenPicked: item.hasBeenAsked,
              title: item.content,
              subtitle: item.answer,
              onTogglePicked: () =>
                  BlocProvider.of<ContentBloc>(context).add(ContentEvent.toggleAsked(item)),
              onDelete: () =>
                  BlocProvider.of<ContentBloc>(context).add(ContentEvent.remove(item.id)),
            );
          },
          childCount: contentList.length,
        ),
      );
}
