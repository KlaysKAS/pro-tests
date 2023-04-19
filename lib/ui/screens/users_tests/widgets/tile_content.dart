part of 'user_test_widget.dart';

class _TileContent extends StatelessWidget {
  final void Function(int id) onDetalePressed;

  const _TileContent({required this.isDismissing, required this.test, required this.onDetalePressed});

  final bool isDismissing;
  final TestInfo test;

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        TileContainer(
          borderColor: isDismissing ? theme.colorScheme.secondary : null,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 60,
                width: 60,
                child: TestIcon(),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(test.title),
                    const SizedBox(height: 8),
                    Text(text.homeTestQuestionsNum(test.questions.length)),
                    const SizedBox(height: 8),
                    Text(text.homeTestPassedPeopleNum(test.participants ?? 0)),
                  ],
                ),
              ),
            ],
          ),
        ),
        DetailButton(
          onTap: () {
            onDetalePressed(test.id);
          },
        )
      ],
    );
  }
}
