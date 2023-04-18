part of 'question_answer_tile.dart';

class _ResultIcon extends StatelessWidget {
  static const _wrongIconPath = 'assets/wrong_answer.svg';
  static const _correctIconPath = 'assets/right_answer.svg';

  final bool isRight;

  const _ResultIcon({
    required this.isRight,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isRight ? _correctIconPath : _wrongIconPath,
      theme: SvgTheme(
        currentColor: isRight ? Const.rightAnswerColor : Const.wrongAnswerColor,
      ),
    );
  }
}
