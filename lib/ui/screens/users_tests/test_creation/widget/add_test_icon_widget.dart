part of '../test_creation.dart';

class _AddTestIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 101,
      height: 101,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            width: 101,
            height: 101,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.primary,
            ),
            child: Center(
              child: Text(
                'TS',
                style: TextStyle(
                  fontSize: Const.fontSizeBodyTitle,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.secondary,
              ),
              child: Icon(
                Icons.add,
                size: 22,
                color: theme.colorScheme.onSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
