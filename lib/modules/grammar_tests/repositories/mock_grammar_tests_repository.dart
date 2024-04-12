// import 'package:focusy/modules/http_client/interfaces/i_http_client.dart';

// import '../interfaces/I_grammar_tests_repository.dart';
// import '../models/grammar_test.dart';

// class MockGrammarTestsRepository implements IGrammarTestsRepository {
//   @override
//   IHttpClient get httpClient => throw UnimplementedError();

//   @override
//   Future<List<GrammarTest>> fetchAccentTests() async {
//     // await Future.delayed(const Duration(seconds: 1));
//     // final response = await
//     // return

//     return const [
//       GrammarTest(
//         id: 0,
//         text: 'аэропорты',
//         variants: [1, 5],
//         correct: [5],
//       ),
//       GrammarTest(
//         id: 1,
//         text: 'банты',
//         variants: [1, 4],
//         correct: [1],
//       ),
//       GrammarTest(
//         id: 2,
//         text: 'бороду',
//         variants: [1, 3, 5],
//         correct: [1],
//       ),
//       GrammarTest(
//         id: 3,
//         text: 'бухгалтеров',
//         variants: [4],
//         correct: [4],
//       ),
//       GrammarTest(
//         id: 4,
//         text: 'вероисповедание',
//         variants: [9],
//         correct: [9],
//       ),
//       GrammarTest(
//         id: 5,
//         text: 'водопровод',
//         variants: [8],
//         correct: [8],
//       ),
//       GrammarTest(
//         id: 6,
//         text: 'газопровод',
//         variants: [8],
//         correct: [8],
//       ),
//       GrammarTest(
//         id: 7,
//         text: 'гражданство',
//         variants: [5],
//         correct: [5],
//       ),
//     ];
//   }

//   @override
//   Future<List<GrammarTest>> fetchCommaTests() async {
//     return const [
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//       GrammarTest(
//         text:
//             'Сейчас, когда, грузовик свернул, к деревне, озеро осталось позади',
//         variants: [0, 1, 3, 5],
//         correct: [0, 5],
//       ),
//       GrammarTest(
//         text: 'Когда грузовик, свернул к деревне, озеро осталось, позади.',
//         variants: [1, 4, 6],
//         correct: [4],
//       ),
//       GrammarTest(
//         text: 'Озеро остались позади, когда грузовик свернул к деревне.',
//         variants: [0, 2, 3],
//         correct: [2],
//       ),
//     ];
//   }

//   @override
//   Future<List<GrammarTest>> fetchSwipeTests() async {
//     return const [
//       GrammarTest(
//         text: 'Обезья_ий',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Испорче_ый пирог',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Льви_ый',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Несоверше_ый вид',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Карто_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Травя_ой',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Лу_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Обезья_ий',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Испорче_ый пирог',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Льви_ый',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Несоверше_ый вид',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Карто_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Травя_ой',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Лу_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Обезья_ий',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Испорче_ый пирог',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Льви_ый',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Несоверше_ый вид',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Карто_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Травя_ой',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Лу_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Обезья_ий',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Испорче_ый пирог',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Льви_ый',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Несоверше_ый вид',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Карто_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//       GrammarTest(
//         text: 'Травя_ой',
//         variants: [0, 1],
//         correct: [0],
//       ),
//       GrammarTest(
//         text: 'Лу_ый',
//         variants: [0, 1],
//         correct: [1],
//       ),
//     ];
//   }
// }
