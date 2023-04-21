part of 'user_test_widget.dart';

class _TileDismissBackground extends StatelessWidget {
  const _TileDismissBackground();

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
        child: Padding(
          padding: const EdgeInsets.all(Const.paddingBetweenSmall),
          child: SvgPicture.asset(
            //ассеты можно генерить в константы
            //так в разы удобнее
            //посмотрите пакет https://pub.dev/packages/flutter_gen
            'assets/delete.svg',
            theme: SvgTheme(currentColor: theme.colorScheme.onSecondary),
          ),
        ),
      ),
    );
  }
}
