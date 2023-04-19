import 'package:flutter/material.dart';
import 'package:pro_tests/data/model/question_result/question_result.dart';
import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/question_answer_tile.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TestResultsScreen extends StatefulWidget {
  const TestResultsScreen({super.key});

  @override
  State<TestResultsScreen> createState() => _TestResultsScreenState();
}

class _TestResultsScreenState extends State<TestResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Ругательства Doka 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          Const.paddingBetweenLarge,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Тест, проверяющий знания и вовлеченность в игру Doka2',
                  style: TextStyle(fontSize: Const.fontSizeBodyTitle),
                ),
                const SizedBox(height: Const.paddingBetweenSmall),
                const Text('Составитель: 232'),
                const SizedBox(height: Const.paddingBetweenSmall),
                const Text('Вопросов: фв'),
                const SizedBox(height: Const.paddingBetweenSmall),
                const Text('Верно: фывы'),
                const SizedBox(height: Const.paddingBetweenSmall),
                const Text('Неверно: вфыау'),
              ],
            ),
            const SizedBox(
              height: Const.paddingBetweenLarge,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return QuestionAnswerTile(
                    question: QuestionResult(
                      id: index,
                      answer: 'Пейджер это:',
                      question: 'Pudge',
                      isRight: true,
                    ),
                  );
                },
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) => const SizedBox(
                  height: Const.paddingBetweenSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
