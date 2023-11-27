import 'package:cyclego/models/rgb_color.model.dart';

class Bike {
  final String? name;
  final String? type;
  final double? rentCost;
  final String? picture;
  final RgbColor? pictureBackgroundRgbColor;

  Bike({
    this.name,
    this.type,
    this.rentCost,
    this.picture,
    this.pictureBackgroundRgbColor,
  });

  factory Bike.fromJson(Map<String, dynamic> json) => Bike(
        name: json["name"],
        type: json["type"],
        rentCost: json["rentCost"]?.toDouble(),
        picture: json["picture"],
        pictureBackgroundRgbColor: json["pictureBackgroundRgbColor"] == null
            ? null
            : RgbColor.fromJson(json["pictureBackgroundRgbColor"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "rentCost": rentCost,
        "picture": picture,
        "pictureBackgroundRgbColor": pictureBackgroundRgbColor?.toJson(),
      };
}
