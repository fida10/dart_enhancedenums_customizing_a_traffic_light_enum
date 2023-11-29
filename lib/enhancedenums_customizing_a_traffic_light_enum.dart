/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/enhancedenums_customizing_a_traffic_light_enum_base.dart';

/*
Practice Question 1: Customizing a Traffic Light Enum

Question:

Create an enhanced enum TrafficLight with values Red, Yellow, Green.

Add a next method to the enum which returns the next traffic light in order 
(e.g., Red -> Yellow, Yellow -> Green, Green -> Red).

Implement a colorCode property that returns a string 
representing the color (e.g., Red returns "#FF0000").
*/

enum TrafficLight {
  Red,
  Yellow,
  Green;

  TrafficLight next(){
    return (this == Green) ? Red : TrafficLight.values[index + 1];
    
    //return TrafficLight.values[index + 1];
  }

  String get colorCode {
    if(this == Red){
      return "#FF0000";
    } else if(this == Yellow){
      return "#FFFF00";
    } else {
      return "#008000";
    }
  }
}