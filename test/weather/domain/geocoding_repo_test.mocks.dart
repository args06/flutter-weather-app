// Mocks generated by Mockito 5.3.2 from annotations
// in web_app_test/test/weather/domain/geocoding_repo_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:web_app_test/weather/data/geocoding_request.dart' as _i7;
import 'package:web_app_test/weather/data/geocoding_response.dart' as _i3;
import 'package:web_app_test/weather/data/weather_request.dart' as _i6;
import 'package:web_app_test/weather/data/weather_response.dart' as _i2;
import 'package:web_app_test/weather/network/service.dart' as _i4;

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

class _FakeWeatherResponse_0 extends _i1.SmartFake
    implements _i2.WeatherResponse {
  _FakeWeatherResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGeocodingResponse_1 extends _i1.SmartFake
    implements _i3.GeocodingResponse {
  _FakeGeocodingResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Service].
///
/// See the documentation for Mockito's code generation for more information.
class MockService extends _i1.Mock implements _i4.Service {
  MockService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.WeatherResponse> getWeather(_i6.WeatherRequest? req) =>
      (super.noSuchMethod(
        Invocation.method(
          #getWeather,
          [req],
        ),
        returnValue:
            _i5.Future<_i2.WeatherResponse>.value(_FakeWeatherResponse_0(
          this,
          Invocation.method(
            #getWeather,
            [req],
          ),
        )),
      ) as _i5.Future<_i2.WeatherResponse>);
  @override
  _i5.Future<_i3.GeocodingResponse> getGeocoding(_i7.GeocodingRequest? req) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGeocoding,
          [req],
        ),
        returnValue:
            _i5.Future<_i3.GeocodingResponse>.value(_FakeGeocodingResponse_1(
          this,
          Invocation.method(
            #getGeocoding,
            [req],
          ),
        )),
      ) as _i5.Future<_i3.GeocodingResponse>);
}
