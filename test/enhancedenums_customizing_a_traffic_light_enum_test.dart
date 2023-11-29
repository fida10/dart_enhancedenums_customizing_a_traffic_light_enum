import 'package:enhancedenums_customizing_a_traffic_light_enum/enhancedenums_customizing_a_traffic_light_enum.dart';
import 'package:test/test.dart';

void main() {
  test('TrafficLight enum next method works correctly', () {
    expect(TrafficLight.Red.next(), equals(TrafficLight.Yellow));
    expect(TrafficLight.Yellow.next(), equals(TrafficLight.Green));
    expect(TrafficLight.Green.next(), equals(TrafficLight.Red));
  });

  test('TrafficLight enum colorCode property returns correct color codes', () {
    expect(TrafficLight.Red.colorCode, equals("#FF0000"));
    expect(TrafficLight.Yellow.colorCode, equals("#FFFF00"));
    expect(TrafficLight.Green.colorCode, equals("#008000"));
  });
}
