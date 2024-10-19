import 'package:fish_hackathon/model/map_element.dart';

class MapModel {
  MapModel({required this.elements,}) {
    rooms = elements.whereType<Room>().toList();
  }
  List<MapElement> elements;
  List<Room>? rooms;
}
