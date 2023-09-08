// Mocks generated by Mockito 5.4.2 from annotations
// in sharezone/test/sharezone_plus/sharezone_plus_page_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:clock/clock.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:purchases_flutter/purchases_flutter.dart' as _i6;
import 'package:remote_configuration/src/remote_configuration.dart' as _i9;
import 'package:sharezone/sharezone_plus/subscription_service/purchase_service.dart'
    as _i4;
import 'package:sharezone/sharezone_plus/subscription_service/subscription_flag.dart'
    as _i3;
import 'package:sharezone/sharezone_plus/subscription_service/subscription_service.dart'
    as _i7;
import 'package:user/user.dart' as _i8;

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

class _FakeClock_0 extends _i1.SmartFake implements _i2.Clock {
  _FakeClock_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSubscriptionEnabledFlag_1 extends _i1.SmartFake
    implements _i3.SubscriptionEnabledFlag {
  _FakeSubscriptionEnabledFlag_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [PurchaseService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPurchaseService extends _i1.Mock implements _i4.PurchaseService {
  @override
  _i5.Future<void> purchase(_i4.ProductId? id) => (super.noSuchMethod(
        Invocation.method(
          #purchase,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<List<_i6.StoreProduct>> getProducts() => (super.noSuchMethod(
        Invocation.method(
          #getProducts,
          [],
        ),
        returnValue:
            _i5.Future<List<_i6.StoreProduct>>.value(<_i6.StoreProduct>[]),
        returnValueForMissingStub:
            _i5.Future<List<_i6.StoreProduct>>.value(<_i6.StoreProduct>[]),
      ) as _i5.Future<List<_i6.StoreProduct>>);
}

/// A class which mocks [SubscriptionService].
///
/// See the documentation for Mockito's code generation for more information.
class MockSubscriptionService extends _i1.Mock
    implements _i7.SubscriptionService {
  @override
  _i5.Stream<_i8.AppUser?> get user => (super.noSuchMethod(
        Invocation.getter(#user),
        returnValue: _i5.Stream<_i8.AppUser?>.empty(),
        returnValueForMissingStub: _i5.Stream<_i8.AppUser?>.empty(),
      ) as _i5.Stream<_i8.AppUser?>);
  @override
  _i2.Clock get clock => (super.noSuchMethod(
        Invocation.getter(#clock),
        returnValue: _FakeClock_0(
          this,
          Invocation.getter(#clock),
        ),
        returnValueForMissingStub: _FakeClock_0(
          this,
          Invocation.getter(#clock),
        ),
      ) as _i2.Clock);
  @override
  _i3.SubscriptionEnabledFlag get isSubscriptionEnabledFlag =>
      (super.noSuchMethod(
        Invocation.getter(#isSubscriptionEnabledFlag),
        returnValue: _FakeSubscriptionEnabledFlag_1(
          this,
          Invocation.getter(#isSubscriptionEnabledFlag),
        ),
        returnValueForMissingStub: _FakeSubscriptionEnabledFlag_1(
          this,
          Invocation.getter(#isSubscriptionEnabledFlag),
        ),
      ) as _i3.SubscriptionEnabledFlag);
  @override
  bool isSubscriptionActive([_i8.AppUser? appUser]) => (super.noSuchMethod(
        Invocation.method(
          #isSubscriptionActive,
          [appUser],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i5.Stream<bool> isSubscriptionActiveStream() => (super.noSuchMethod(
        Invocation.method(
          #isSubscriptionActiveStream,
          [],
        ),
        returnValue: _i5.Stream<bool>.empty(),
        returnValueForMissingStub: _i5.Stream<bool>.empty(),
      ) as _i5.Stream<bool>);
  @override
  bool hasFeatureUnlocked(_i7.SharezonePlusFeature? feature) =>
      (super.noSuchMethod(
        Invocation.method(
          #hasFeatureUnlocked,
          [feature],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}

/// A class which mocks [RemoteConfiguration].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteConfiguration extends _i1.Mock
    implements _i9.RemoteConfiguration {
  @override
  void initialize(Map<String, dynamic>? defaultValues) => super.noSuchMethod(
        Invocation.method(
          #initialize,
          [defaultValues],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<bool> activate() => (super.noSuchMethod(
        Invocation.method(
          #activate,
          [],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<void> fetch() => (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  String getString(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getString,
          [key],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  bool getBool(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getBool,
          [key],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}
