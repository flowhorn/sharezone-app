// Mocks generated by Mockito 5.3.2 from annotations
// in sharezone/test/dashboard/update_reminder_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:holidays/holidays.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sharezone/blackboard/blackboard_view.dart' as _i15;
import 'package:sharezone/blocs/dashbord_widgets_blocs/holiday_bloc.dart'
    as _i5;
import 'package:sharezone/dashboard/bloc/dashboard_bloc.dart' as _i13;
import 'package:sharezone/dashboard/models/homework_view.dart' as _i14;
import 'package:sharezone/dashboard/timetable/lesson_view.dart' as _i17;
import 'package:sharezone/dashboard/tips/cache/dashboard_tip_cache.dart' as _i6;
import 'package:sharezone/dashboard/tips/dashboard_tip_system.dart' as _i11;
import 'package:sharezone/dashboard/tips/models/dashboard_tip.dart' as _i12;
import 'package:sharezone/dashboard/update_reminder/release.dart' as _i2;
import 'package:sharezone/dashboard/update_reminder/update_reminder_bloc.dart'
    as _i8;
import 'package:sharezone/navigation/logic/navigation_bloc.dart' as _i7;
import 'package:sharezone/pages/settings/changelog/change.dart' as _i3;
import 'package:sharezone/timetable/src/widgets/events/event_view.dart' as _i16;
import 'package:user/user.dart' as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRelease_0 extends _i1.SmartFake implements _i2.Release {
  _FakeRelease_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVersion_1 extends _i1.SmartFake implements _i3.Version {
  _FakeVersion_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_2 extends _i1.SmartFake implements Duration {
  _FakeDuration_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDateTime_3 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHolidayService_4 extends _i1.SmartFake
    implements _i4.HolidayService {
  _FakeHolidayService_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHolidayStateGateway_5 extends _i1.SmartFake
    implements _i5.HolidayStateGateway {
  _FakeHolidayStateGateway_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDashboardTipCache_6 extends _i1.SmartFake
    implements _i6.DashboardTipCache {
  _FakeDashboardTipCache_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNavigationBloc_7 extends _i1.SmartFake
    implements _i7.NavigationBloc {
  _FakeNavigationBloc_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UpdateReminderBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateReminderBloc extends _i1.Mock
    implements _i8.UpdateReminderBloc {
  @override
  _i9.Future<_i2.Release> Function() get getLatestRelease =>
      (super.noSuchMethod(
        Invocation.getter(#getLatestRelease),
        returnValue: () => _i9.Future<_i2.Release>.value(_FakeRelease_0(
          this,
          Invocation.getter(#getLatestRelease),
        )),
        returnValueForMissingStub: () =>
            _i9.Future<_i2.Release>.value(_FakeRelease_0(
          this,
          Invocation.getter(#getLatestRelease),
        )),
      ) as _i9.Future<_i2.Release> Function());
  @override
  _i9.Future<_i3.Version> Function() get getCurrentVersion =>
      (super.noSuchMethod(
        Invocation.getter(#getCurrentVersion),
        returnValue: () => _i9.Future<_i3.Version>.value(_FakeVersion_1(
          this,
          Invocation.getter(#getCurrentVersion),
        )),
        returnValueForMissingStub: () =>
            _i9.Future<_i3.Version>.value(_FakeVersion_1(
          this,
          Invocation.getter(#getCurrentVersion),
        )),
      ) as _i9.Future<_i3.Version> Function());
  @override
  Duration get updateGracePeriod => (super.noSuchMethod(
        Invocation.getter(#updateGracePeriod),
        returnValue: _FakeDuration_2(
          this,
          Invocation.getter(#updateGracePeriod),
        ),
        returnValueForMissingStub: _FakeDuration_2(
          this,
          Invocation.getter(#updateGracePeriod),
        ),
      ) as Duration);
  @override
  DateTime Function() get getCurrentDateTime => (super.noSuchMethod(
        Invocation.getter(#getCurrentDateTime),
        returnValue: () => _FakeDateTime_3(
          this,
          Invocation.getter(#getCurrentDateTime),
        ),
        returnValueForMissingStub: () => _FakeDateTime_3(
          this,
          Invocation.getter(#getCurrentDateTime),
        ),
      ) as DateTime Function());
  @override
  _i9.Future<bool> shouldRemindToUpdate() => (super.noSuchMethod(
        Invocation.method(
          #shouldRemindToUpdate,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
        returnValueForMissingStub: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [HolidayBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockHolidayBloc extends _i1.Mock implements _i5.HolidayBloc {
  @override
  _i4.HolidayService get holidayManager => (super.noSuchMethod(
        Invocation.getter(#holidayManager),
        returnValue: _FakeHolidayService_4(
          this,
          Invocation.getter(#holidayManager),
        ),
        returnValueForMissingStub: _FakeHolidayService_4(
          this,
          Invocation.getter(#holidayManager),
        ),
      ) as _i4.HolidayService);
  @override
  set getCurrentTime(DateTime Function()? _getCurrentTime) =>
      super.noSuchMethod(
        Invocation.setter(
          #getCurrentTime,
          _getCurrentTime,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.HolidayStateGateway get stateGateway => (super.noSuchMethod(
        Invocation.getter(#stateGateway),
        returnValue: _FakeHolidayStateGateway_5(
          this,
          Invocation.getter(#stateGateway),
        ),
        returnValueForMissingStub: _FakeHolidayStateGateway_5(
          this,
          Invocation.getter(#stateGateway),
        ),
      ) as _i5.HolidayStateGateway);
  @override
  _i9.Stream<List<_i4.Holiday?>> get holidays => (super.noSuchMethod(
        Invocation.getter(#holidays),
        returnValue: _i9.Stream<List<_i4.Holiday?>>.empty(),
        returnValueForMissingStub: _i9.Stream<List<_i4.Holiday?>>.empty(),
      ) as _i9.Stream<List<_i4.Holiday?>>);
  @override
  _i9.Stream<_i10.StateEnum?> get userState => (super.noSuchMethod(
        Invocation.getter(#userState),
        returnValue: _i9.Stream<_i10.StateEnum?>.empty(),
        returnValueForMissingStub: _i9.Stream<_i10.StateEnum?>.empty(),
      ) as _i9.Stream<_i10.StateEnum?>);
  @override
  _i9.Stream<bool> get hasStateSelected => (super.noSuchMethod(
        Invocation.getter(#hasStateSelected),
        returnValue: _i9.Stream<bool>.empty(),
        returnValueForMissingStub: _i9.Stream<bool>.empty(),
      ) as _i9.Stream<bool>);
  @override
  _i9.Future<void> Function(_i10.StateEnum?) get changeState =>
      (super.noSuchMethod(
        Invocation.getter(#changeState),
        returnValue: (_i10.StateEnum? state) => _i9.Future<void>.value(),
        returnValueForMissingStub: (_i10.StateEnum? state) =>
            _i9.Future<void>.value(),
      ) as _i9.Future<void> Function(_i10.StateEnum?));
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DashboardTipSystem].
///
/// See the documentation for Mockito's code generation for more information.
class MockDashboardTipSystem extends _i1.Mock
    implements _i11.DashboardTipSystem {
  @override
  _i6.DashboardTipCache get cache => (super.noSuchMethod(
        Invocation.getter(#cache),
        returnValue: _FakeDashboardTipCache_6(
          this,
          Invocation.getter(#cache),
        ),
        returnValueForMissingStub: _FakeDashboardTipCache_6(
          this,
          Invocation.getter(#cache),
        ),
      ) as _i6.DashboardTipCache);
  @override
  _i7.NavigationBloc get navigationBloc => (super.noSuchMethod(
        Invocation.getter(#navigationBloc),
        returnValue: _FakeNavigationBloc_7(
          this,
          Invocation.getter(#navigationBloc),
        ),
        returnValueForMissingStub: _FakeNavigationBloc_7(
          this,
          Invocation.getter(#navigationBloc),
        ),
      ) as _i7.NavigationBloc);
  @override
  _i9.Stream<_i12.DashboardTip?> get dashboardTip => (super.noSuchMethod(
        Invocation.getter(#dashboardTip),
        returnValue: _i9.Stream<_i12.DashboardTip?>.empty(),
        returnValueForMissingStub: _i9.Stream<_i12.DashboardTip?>.empty(),
      ) as _i9.Stream<_i12.DashboardTip?>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DashboardBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockDashboardBloc extends _i1.Mock implements _i13.DashboardBloc {
  @override
  DateTime get todayDateTimeWithoutTime => (super.noSuchMethod(
        Invocation.getter(#todayDateTimeWithoutTime),
        returnValue: _FakeDateTime_3(
          this,
          Invocation.getter(#todayDateTimeWithoutTime),
        ),
        returnValueForMissingStub: _FakeDateTime_3(
          this,
          Invocation.getter(#todayDateTimeWithoutTime),
        ),
      ) as DateTime);
  @override
  _i9.Stream<List<_i14.HomeworkView>> get urgentHomeworks =>
      (super.noSuchMethod(
        Invocation.getter(#urgentHomeworks),
        returnValue: _i9.Stream<List<_i14.HomeworkView>>.empty(),
        returnValueForMissingStub: _i9.Stream<List<_i14.HomeworkView>>.empty(),
      ) as _i9.Stream<List<_i14.HomeworkView>>);
  @override
  _i9.Stream<List<_i15.BlackboardView>> get unreadBlackboardViews =>
      (super.noSuchMethod(
        Invocation.getter(#unreadBlackboardViews),
        returnValue: _i9.Stream<List<_i15.BlackboardView>>.empty(),
        returnValueForMissingStub:
            _i9.Stream<List<_i15.BlackboardView>>.empty(),
      ) as _i9.Stream<List<_i15.BlackboardView>>);
  @override
  _i9.Stream<bool> get urgentHomeworksEmpty => (super.noSuchMethod(
        Invocation.getter(#urgentHomeworksEmpty),
        returnValue: _i9.Stream<bool>.empty(),
        returnValueForMissingStub: _i9.Stream<bool>.empty(),
      ) as _i9.Stream<bool>);
  @override
  _i9.Stream<List<_i16.EventView>> get upcomingEvents => (super.noSuchMethod(
        Invocation.getter(#upcomingEvents),
        returnValue: _i9.Stream<List<_i16.EventView>>.empty(),
        returnValueForMissingStub: _i9.Stream<List<_i16.EventView>>.empty(),
      ) as _i9.Stream<List<_i16.EventView>>);
  @override
  _i9.Stream<int> get numberOfUrgentHomeworks => (super.noSuchMethod(
        Invocation.getter(#numberOfUrgentHomeworks),
        returnValue: _i9.Stream<int>.empty(),
        returnValueForMissingStub: _i9.Stream<int>.empty(),
      ) as _i9.Stream<int>);
  @override
  _i9.Stream<List<_i17.LessonView>> get lessonViews => (super.noSuchMethod(
        Invocation.getter(#lessonViews),
        returnValue: _i9.Stream<List<_i17.LessonView>>.empty(),
        returnValueForMissingStub: _i9.Stream<List<_i17.LessonView>>.empty(),
      ) as _i9.Stream<List<_i17.LessonView>>);
  @override
  _i9.Stream<int> get numberOfUnreadBlackboardViews => (super.noSuchMethod(
        Invocation.getter(#numberOfUnreadBlackboardViews),
        returnValue: _i9.Stream<int>.empty(),
        returnValueForMissingStub: _i9.Stream<int>.empty(),
      ) as _i9.Stream<int>);
  @override
  _i9.Stream<bool> get unreadBlackboardViewsEmpty => (super.noSuchMethod(
        Invocation.getter(#unreadBlackboardViewsEmpty),
        returnValue: _i9.Stream<bool>.empty(),
        returnValueForMissingStub: _i9.Stream<bool>.empty(),
      ) as _i9.Stream<bool>);
  @override
  _i9.Stream<int> get nubmerOfUpcomingEvents => (super.noSuchMethod(
        Invocation.getter(#nubmerOfUpcomingEvents),
        returnValue: _i9.Stream<int>.empty(),
        returnValueForMissingStub: _i9.Stream<int>.empty(),
      ) as _i9.Stream<int>);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}