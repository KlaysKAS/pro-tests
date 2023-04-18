import 'dart:math';

import 'package:flutter/material.dart';

class SwipableCard extends StatefulWidget {
  final VoidCallback? onBackGroundTap;
  final void Function(double dragRatio)? onDrag;
  final Widget? child;
  final Widget? background;
  final double dragTrashhold;
  final double dragDistance;

  const SwipableCard({
    Key? key,
    this.dragTrashhold = 0.5,
    this.background,
    this.dragDistance = 32,
    this.child,
    this.onDrag,
    this.onBackGroundTap,
  }) : super(key: key);

  @override
  State<SwipableCard> createState() => _SwipableCardState();
}

class _SwipableCardState extends State<SwipableCard> with TickerProviderStateMixin {
  late final AnimationController _positionAnimator;
  late final Animation _offsetTween;
  final key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _positionAnimator = AnimationController(vsync: this, duration: const Duration(seconds: 1), value: 0);
    _positionAnimator.addListener(() {
      setState(() {
        if (widget.onDrag != null) {
          widget.onDrag!(_positionAnimator.value);
        }
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _offsetTween = Tween(begin: 0.0, end: -widget.dragDistance).animate(_positionAnimator);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: widget.onBackGroundTap,
              child: widget.background,
            ),
          ),
          Transform.translate(
            offset: Offset(_offsetTween.value, 0),
            child: GestureDetector(
              onHorizontalDragStart: _dragStart,
              onHorizontalDragUpdate: _dragUpdate,
              onHorizontalDragEnd: _dragEnd,
              child: SizedBox(
                width: constraints.maxWidth,
                child: widget.child,
              ),
            ),
          ),
        ],
      );
    });
  }

  Offset _localPosition = Offset.zero;
  late double _startValue = _positionAnimator.value;

  void _dragStart(DragStartDetails details) {
    _localPosition = details.localPosition;
    _startValue = _positionAnimator.value;
  }

  void _dragUpdate(DragUpdateDetails details) {
    setState(() {
      _positionAnimator.value = max(
          0.0,
          min(1.0,
              (_startValue * widget.dragDistance + (_localPosition - details.localPosition).dx) / widget.dragDistance));
    });
  }

  void _dragEnd(DragEndDetails details) {
    if (_positionAnimator.value < 0.5) {
      _positionAnimator.animateTo(0);
    } else {
      _positionAnimator.animateTo(1);
    }
  }
}
