// Copyright (c) 2022 Sharezone UG (haftungsbeschränkt)
// Licensed under the EUPL-1.2-or-later.
//
// You may obtain a copy of the Licence at:
// https://joinup.ec.europa.eu/software/page/eupl
//
// SPDX-License-Identifier: EUPL-1.2

import 'package:analytics/analytics.dart';
import 'package:date/src/date.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sharezone/blocs/homework/homework_dialog_bloc.dart';
import 'package:sharezone/markdown/markdown_analytics.dart';
import 'package:sharezone/util/next_lesson_calculator/next_lesson_calculator.dart';

import '../analytics/analytics_test.dart';

class MockHomeworkDialogApi extends Mock implements HomeworkDialogApi {}

class MockNextLessonCalculator implements NextLessonCalculator {
  @override
  Future<Date?> calculateNextLesson(String courseID) async {
    return Date('2032-01-03');
  }
}

void main() {
  late HomeworkDialogBloc bloc;
  final analytics = Analytics(LocalAnalyticsBackend());
  setUp(() {
    bloc = HomeworkDialogBloc(MockHomeworkDialogApi(),
        MockNextLessonCalculator(), MarkdownAnalytics(analytics), analytics);
  });

  test("If a homework title is given then the same value should be emitted",
      () {
    String homeworkTitle = "Buch S. 23";
    bloc.changeTitle(homeworkTitle);
    expect(bloc.title, emits(homeworkTitle));
  });

  test("The seed value of private should be false", () {
    bloc.dispose();
    expect(bloc.private, emits(false));
  });

  test("If private is changed to true, the value should be the same", () {
    bloc.changePrivate(true);
    expect(bloc.private, emits(true));
    bloc.dispose();
    expect(bloc.private, neverEmits(false));
  });
}
