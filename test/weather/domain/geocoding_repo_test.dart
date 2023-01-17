import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:web_app_test/weather/data/geocoding_request.dart';
import 'package:web_app_test/weather/data/geocoding_response.dart';
import 'package:web_app_test/weather/domain/geocoding_repo.dart';
import 'package:web_app_test/weather/network/service.dart';

import 'geocoding_repo_test.mocks.dart';

@GenerateMocks([Service])
void main() {
  MockService mockService = MockService();
  late GeocodingRepo geocodingRepo;

  setUp(() {
    geocodingRepo = GeocodingRepo(service: mockService);
  });

  test("Testing", () async {
    final response = GeocodingResponse(
        name: "Yogyakarta",
        localNames: null,
        lat: -7.8011945,
        lon: 110.364917,
        country: "ID");

    when(mockService.getGeocoding(any)).thenAnswer((_) async => response);

    geocodingRepo.getCoordinate(GeocodingRequest(cityName: "Yogyakarta"));

    verify(await mockService.getGeocoding(any));
    expect(await mockService.getGeocoding(GeocodingRequest(cityName: "Yogyakarta")), response);
  });
}
