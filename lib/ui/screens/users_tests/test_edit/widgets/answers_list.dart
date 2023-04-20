part of '../test_edit.dart';

class _Content extends StatefulWidget {
  const _Content({
    super.key,
    required this.type,
    required this.onChanged,
    required this.manager,
  });

  final QuestionTypes type;
  final void Function(List<int> correctAnswers) onChanged;
  final _ControllerManager manager;

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  late QuestionTypes type;
  late final controllers = widget.manager;
  final correctAnswers = <int>[];

  @override
  void initState() {
    type = widget.type;
    correctAnswers.add(0);
    controllers.init(type);
    widget.onChanged(correctAnswers);
    super.initState();
  }

  @override
  void didUpdateWidget(oldWidget) {
    if (oldWidget.type != widget.type) {
      setState(() {
        type = widget.type;
        correctAnswers.clear();
        controllers.init(type);
        if (type == QuestionTypes.single) {
          correctAnswers.add(0);
        }
        widget.onChanged(correctAnswers);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controllers.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: _buildItems,
      separatorBuilder: (_, __) => const SizedBox(height: Const.paddingBetweenStandart),
      itemCount: controllers.controllers.length + (type != QuestionTypes.free ? 1 : 0),
    );
  }

  Widget _buildItems(BuildContext context, int index) {
    final text = AppLocalizations.of(context)!;
    print(index);
    if (type != QuestionTypes.free && index < controllers.controllers.length) {
      return Row(
        children: [
          const SizedBox(width: Const.paddingBetweenLarge),
          if (type == QuestionTypes.single)
            CustomRadioButton(
              value: correctAnswers.first,
              groupValue: index,
              callback: (value) {
                if (value is int) {
                  setState(() => correctAnswers
                    ..clear()
                    ..add(value));
                  widget.onChanged(correctAnswers);
                }
              },
            ),
          if (type == QuestionTypes.multiple)
            Checkbox(
              value: correctAnswers.contains(index),
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  if (value) {
                    correctAnswers.add(index);
                  } else {
                    correctAnswers.remove(index);
                  }
                  widget.onChanged(correctAnswers);
                });
              },
            ),
          Expanded(
            child: MainFormInput(
              controller: controllers.controllers[index],
              decoration: InputDecoration(label: text.questionCreateFormAnswerTextTitle(index + 1).toText()),
            ),
          ),
        ],
      );
    } else if (index == controllers.controllers.length) {
      return AddAnswerButton(onPressed: () => setState(() => controllers.add()));
    }
    return MainFormInput(
      controller: controllers.controllers[index],
      decoration: InputDecoration(label: text.questionCreateFormAnswerTextPlaceholder.toText()),
    );
  }
}
