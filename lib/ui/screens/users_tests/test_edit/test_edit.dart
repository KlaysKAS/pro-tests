import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/custom_radio_button.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';

part 'widgets/type_picker.dart';
part 'widgets/answers_list.dart';

class TestEditScreen extends ConsumerStatefulWidget {
  const TestEditScreen({super.key});

  @override
  ConsumerState<TestEditScreen> createState() => _TestEditScreenState();
}

class _TestEditScreenState extends ConsumerState<TestEditScreen> {
  var questionType = QuestionTypes.single;
  late final TextEditingController questionController;
  final manager = _ControllerManager();
  List<int> correctIndexes = [];

  @override
  void initState() {
    questionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    questionController.dispose();
    manager.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _TypePicker(
              onSelected: (type) {
                if (type != null) setState(() => questionType = type);
              },
              value: questionType,
            ),
            MainFormInput(
              controller: questionController,
              decoration: InputDecoration(label: Text(text.questionCreateFormQuestionTextTitle)),
            ),
            const Divider(),
            Expanded(
              child: _Content(
                manager: manager,
                type: questionType,
                onChanged: (correctAnswers) {
                  correctIndexes = correctAnswers;
                },
              ),
            ),
            const SizedBox(height: Const.paddingBetweenStandart),
            MainButton(
              btnText: text.passingTestNextBtn,
              onPressed: _pushQuestion,
            ),
            const SizedBox(height: Const.paddingBetweenLarge),
          ],
        ),
      ),
    );
  }

  void _pushQuestion() {
    if (manager.getAnswers().isEmpty) return;

    final notifier = ref.read(serviceLocator.testCreationStateNotifier.notifier);

    switch (questionType) {
      case QuestionTypes.free:
        final answer = manager.controllers.first.text;
        if (answer.isNotEmpty) {
          notifier.addQuestion(Question.openAnswer(
            id: 0,
            question: questionController.text,
            answer: manager.controllers.first.text,
          ));
        }
        break;
      case QuestionTypes.multiple:
        final correctAnswers = correctIndexes.map((e) => manager.controllers[e].text).toList();
        if (correctAnswers.isNotEmpty) {
          notifier.addQuestion(Question.multiAnswer(
              id: 0,
              question: questionController.text,
              answers: manager.controllers.map((e) => e.text).toList(),
              answer: correctAnswers));
        }
        break;
      case QuestionTypes.single:
        final answer = manager.controllers[correctIndexes.first].text;
        if (answer.isNotEmpty) {
          notifier.addQuestion(Question.openAnswer(
            id: 0,
            question: questionController.text,
            answer: answer,
          ));
        }
        break;
    }
    questionController.clear();
    manager.init(questionType);
    setState(() {});
  }
}

class _ControllerManager {
  final List<TextEditingController> controllers = [];

  _ControllerManager();

  void init(QuestionTypes type) {
    clear();
    add();
    if (type != QuestionTypes.free) {
      add();
    }
  }

  void add() {
    controllers.add(TextEditingController());
  }

  List<String> getAnswers() {
    return controllers.map((e) => e.text).where((e) => e.isNotEmpty).toList();
  }

  void clear() {
    controllers.map((e) => e.dispose());
    controllers.clear();
  }
}
