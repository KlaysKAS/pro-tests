part of '../test_edit.dart';

enum QuestionTypes {
  single,
  multiple,
  free,
}

class _TypePicker extends StatelessWidget {
  final void Function(QuestionTypes? type) onSelected;
  final QuestionTypes value;

  const _TypePicker({
    required this.onSelected,
    required this.value,
  });

  @override
  Widget build(context) {
    final text = AppLocalizations.of(context)!;
    return DropdownButton(
      onChanged: onSelected,
      value: value,
      items: [
        DropdownMenuItem(
          value: QuestionTypes.single,
          child: Text(text.questionCreateQuestionTypeSingle),
        ),
        DropdownMenuItem(
          value: QuestionTypes.multiple,
          child: Text(text.questionCreateQuestionTypeMultiple),
        ),
        DropdownMenuItem(
          value: QuestionTypes.free,
          child: Text(text.questionCreateQuestionTypeFree),
        ),
      ],
    );
  }
}
