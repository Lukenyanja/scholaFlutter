// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizQuestionStruct extends FFFirebaseStruct {
  QuizQuestionStruct({
    String? question,
    List<String>? options,
    String? correctAnswer,
    String? questionNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _options = options,
        _correctAnswer = correctAnswer,
        _questionNumber = questionNumber,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  set correctAnswer(String? val) => _correctAnswer = val;

  bool hasCorrectAnswer() => _correctAnswer != null;

  // "questionNumber" field.
  String? _questionNumber;
  String get questionNumber => _questionNumber ?? '';
  set questionNumber(String? val) => _questionNumber = val;

  bool hasQuestionNumber() => _questionNumber != null;

  static QuizQuestionStruct fromMap(Map<String, dynamic> data) =>
      QuizQuestionStruct(
        question: data['question'] as String?,
        options: getDataList(data['options']),
        correctAnswer: data['correctAnswer'] as String?,
        questionNumber: data['questionNumber'] as String?,
      );

  static QuizQuestionStruct? maybeFromMap(dynamic data) => data is Map
      ? QuizQuestionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'options': _options,
        'correctAnswer': _correctAnswer,
        'questionNumber': _questionNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
        'correctAnswer': serializeParam(
          _correctAnswer,
          ParamType.String,
        ),
        'questionNumber': serializeParam(
          _questionNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuizQuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizQuestionStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        correctAnswer: deserializeParam(
          data['correctAnswer'],
          ParamType.String,
          false,
        ),
        questionNumber: deserializeParam(
          data['questionNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuizQuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuizQuestionStruct &&
        question == other.question &&
        listEquality.equals(options, other.options) &&
        correctAnswer == other.correctAnswer &&
        questionNumber == other.questionNumber;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([question, options, correctAnswer, questionNumber]);
}

QuizQuestionStruct createQuizQuestionStruct({
  String? question,
  String? correctAnswer,
  String? questionNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuizQuestionStruct(
      question: question,
      correctAnswer: correctAnswer,
      questionNumber: questionNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuizQuestionStruct? updateQuizQuestionStruct(
  QuizQuestionStruct? quizQuestion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quizQuestion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuizQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuizQuestionStruct? quizQuestion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quizQuestion == null) {
    return;
  }
  if (quizQuestion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quizQuestion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quizQuestionData =
      getQuizQuestionFirestoreData(quizQuestion, forFieldValue);
  final nestedData =
      quizQuestionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quizQuestion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuizQuestionFirestoreData(
  QuizQuestionStruct? quizQuestion, [
  bool forFieldValue = false,
]) {
  if (quizQuestion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quizQuestion.toMap());

  // Add any Firestore field values
  quizQuestion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuizQuestionListFirestoreData(
  List<QuizQuestionStruct>? quizQuestions,
) =>
    quizQuestions?.map((e) => getQuizQuestionFirestoreData(e, true)).toList() ??
    [];
