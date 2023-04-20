part of '../test_attempt.dart';

class _OpenAnswer extends StatefulWidget {
  final void Function(String answer) onChanged;

  const _OpenAnswer({
    required this.onChanged,
  });

  @override
  State<StatefulWidget> createState() => _OpenAnswerState();
}

class _OpenAnswerState extends State<_OpenAnswer> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(() {
      widget.onChanged(controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainFormInput(
      controller: controller,
      minLines: 3,
      maxLines: 5,
    );
  }
}

class _ChoiceAnswers extends StatefulWidget {
  final Question question;
  final void Function(List<int>) onChanged;

  const _ChoiceAnswers({
    Key? key,
    required this.question,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChoiceAnswersState();
}

class _ChoiceAnswersState extends State<_ChoiceAnswers> {
  List<int> chosenAnswers = [];

  @override
  Widget build(context) {
    final answers = _getAnswers(widget.question);
    return ListView.separated(
      itemBuilder: (context, index) => Row(
        children: [
          (widget.question is SingleAnswer)
              ? CustomRadioButton(
                  value: chosenAnswers.isNotEmpty ? chosenAnswers.first : null,
                  groupValue: index,
                  callback: (value) {
                    chosenAnswers = [value];
                    widget.onChanged(chosenAnswers);
                    setState(() {});
                  },
                )
              : Checkbox(
                  value: chosenAnswers.contains(index),
                  onChanged: (value) {
                    if (value == null) return;
                    if (value) {
                      chosenAnswers.add(index);
                    } else {
                      chosenAnswers.remove(index);
                    }
                    widget.onChanged(chosenAnswers);
                    setState(() {});
                  },
                ),
          const SizedBox(width: Const.paddingBetweenStandart),
          Expanded(child: Text(answers[index])),
        ],
      ),
      separatorBuilder: (_, __) => const SizedBox(height: Const.paddingBetweenStandart),
      itemCount: answers.length,
    );
  }

  List<String> _getAnswers(Question question) {
    if (question is SingleAnswer) {
      return question.answers;
    } else if (question is MultiAnswer) {
      return question.answers;
    } else if (question is OpenAnswer) {
      return [];
    }
    throw const SomethingWentWrong();
  }
}
