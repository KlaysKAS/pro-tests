part of 'user_test_widget.dart';

class _TileDismissBackground extends StatelessWidget {
  const _TileDismissBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: const BorderRadius.all(Const.borderRadiusStandart),
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Icon(Icons.delete, color: theme.colorScheme.onSecondary,),
      ),
    );
  }
}
