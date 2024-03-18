// Copyright (c) 2024 Sharezone UG (haftungsbeschränkt)
// Licensed under the EUPL-1.2-or-later.
//
// You may obtain a copy of the Licence at:
// https://joinup.ec.europa.eu/software/page/eupl
//
// SPDX-License-Identifier: EUPL-1.2

import 'dart:async';
import 'dart:math';

import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:sharezone/grades/models/subject_id.dart';
import 'package:sharezone/grades/models/term_id.dart';
import 'package:sharezone/grades/pages/grades_view.dart';

class GradesPageController extends ChangeNotifier {
  GradesPageState state = const GradesPageLoading();
  StreamSubscription? _subscription;

  GradesPageController() {
    final random = Random(42);
    final currentTerm = (
      id: const TermId('term-0'),
      displayName: '11/1',
      avgGrade: ('1,4', GradePerformance.good),
      subjects: [
        (
          displayName: 'Deutsch',
          abbreviation: 'DE',
          grade: '2,0',
          design: Design.random(random),
          id: const SubjectId('1'),
        ),
        (
          displayName: 'Englisch',
          abbreviation: 'E',
          grade: '2+',
          design: Design.random(random),
          id: const SubjectId('2'),
        ),
        (
          displayName: 'Mathe',
          abbreviation: 'DE',
          grade: '1-',
          design: Design.random(random),
          id: const SubjectId('3'),
        ),
        (
          displayName: 'Sport',
          abbreviation: 'DE',
          grade: '1,0',
          design: Design.random(random),
          id: const SubjectId('4'),
        ),
        (
          displayName: 'Physik',
          abbreviation: 'PH',
          grade: '3,0',
          design: Design.random(random),
          id: const SubjectId('5'),
        ),
      ]
    );
    final pastTerms = [
      (
        id: const TermId('term-1'),
        displayName: '10/2',
        avgGrade: ('1,0', GradePerformance.good),
      ),
      (
        id: const TermId('term-3'),
        displayName: '9/2',
        avgGrade: ('1,0', GradePerformance.good),
      ),
      (
        id: const TermId('term-2'),
        displayName: '10/1',
        avgGrade: ('2,4', GradePerformance.satisfactory),
      ),
      (
        id: const TermId('term-6'),
        displayName: 'Q1/1',
        avgGrade: ('2,4', GradePerformance.satisfactory),
      ),
      (
        id: const TermId('term-5'),
        displayName: '8/2',
        avgGrade: ('1,7', GradePerformance.good),
      ),
      (
        id: const TermId('term-4'),
        displayName: '9/1',
        avgGrade: ('3,7', GradePerformance.bad),
      ),
    ];

    _subscription = Stream.value(
      (currentTerm, pastTerms),
    ).listen((event) {
      try {
        event.$1.subjects.sortByDisplayName();
        event.$2.sortByTermName();

        state = GradesPageLoaded(
          currentTerm: event.$1,
          pastTerms: event.$2,
        );
        notifyListeners();
      } catch (e) {
        state = GradesPageError('$e');
        notifyListeners();
      }
    }, onError: (e) {
      state = GradesPageError('$e');
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

extension on List<PastTermView> {
  /// Sorts the terms by their [displayName].
  ///
  /// "Q1/2"
  /// "Q1/1"
  /// "10/2"
  /// "10/1"
  /// "9/2"
  /// "9/1"
  void sortByTermName() {
    // todo(nilsreichardt): this doesn't work because with Strings is "9" > "10"
    sort((a, b) => b.displayName.compareTo(a.displayName));
  }
}

extension on List<SubjectView> {
  void sortByDisplayName() {
    sort((a, b) => a.displayName.compareTo(b.displayName));
  }
}

sealed class GradesPageState {
  const GradesPageState();
}

class GradesPageLoading extends GradesPageState {
  const GradesPageLoading();
}

class GradesPageLoaded extends GradesPageState {
  /// The current term.
  ///
  /// If the user hasn't selected a current term, this will be `null`.
  final CurrentTermView? currentTerm;

  /// The past terms.
  ///
  /// If the user has no past terms, this will be an empty list.
  final List<PastTermView> pastTerms;

  const GradesPageLoaded({
    required this.currentTerm,
    required this.pastTerms,
  });

  /// Returns `true` if the user has any grades in any term.
  bool hasGrades() {
    return !(currentTerm == null && pastTerms.isEmpty);
  }
}

class GradesPageError extends GradesPageState {
  final String error;

  const GradesPageError(this.error);
}
