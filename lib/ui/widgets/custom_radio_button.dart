import 'package:flutter/material.dart';

const _kToggleDuration = Duration(milliseconds: 200);
const double _bigRadius = 0.5;
const double _mediumRadius = 0.4;
const double _smallRadius = 0.25;

class CustomRadioButton<T> extends StatefulWidget {
  final T value;
  final T groupValue;
  final void Function(dynamic value) callback;

  bool get isChecked => value == groupValue;

  const CustomRadioButton(
      {Key? key,
      required this.callback,
      required this.value,
      required this.groupValue})
      : super(key: key);

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton>
    with TickerProviderStateMixin {
  late AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
        vsync: this,
        duration: _kToggleDuration,
        value: widget.isChecked ? 1 : 0);
    _animation.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(CustomRadioButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isChecked != oldWidget.isChecked) {
      _animateValue();
    }
  }

  void _animateValue() {
    if (widget.isChecked) {
      _animation.animateTo(1);
    } else {
      _animation.animateTo(0);
    }
  }

  void _onTapHandler() {
    widget.callback(widget.groupValue);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 30,
      height: 30,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: _onTapHandler,
        splashColor: colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Opacity(
            opacity: 0.99,
            child: CustomPaint(
              painter: _CheckboxPainter(
                animationValue: _animation.value,
                checkedColor: colorScheme.primary,
                checkedInnerColor: colorScheme.secondary,
                unCheckedColor: Theme.of(context).hintColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }
}

class _CheckboxPainter extends ToggleablePainter {
  final Color checkedColor;
  final Color checkedInnerColor;
  final Color unCheckedColor;

  late final _colorAnimation =
      ColorTween(begin: unCheckedColor, end: checkedColor);

  late final _innerPaint = Paint()..color = checkedInnerColor;
  late final _outerPaint = Paint()
    ..color = _colorAnimation.lerp(animationValue) ?? unCheckedColor;
  late final _clearPaint = Paint()..blendMode = BlendMode.clear;

  final double animationValue;

  _CheckboxPainter({
    required this.animationValue,
    required this.checkedColor,
    required this.checkedInnerColor,
    required this.unCheckedColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width * _bigRadius, _outerPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width * _mediumRadius, _clearPaint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        size.width * _smallRadius * animationValue, _innerPaint);
  }

  @override
  bool shouldRepaint(covariant _CheckboxPainter oldDelegate) => true;
}
