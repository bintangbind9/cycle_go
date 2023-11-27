import 'package:cyclego/models/bike.model.dart';
import 'package:cyclego/models/rgb_color.model.dart';

class Rental {
  final String? name;
  final String? address;
  final double? distance;
  final int? rating;
  final bool? isOpen;
  final int? ready;
  final int? booked;
  final int? inUse;
  final String? picture;
  final RgbColor? pictureBackgroundRgbColor;
  final List<Bike>? bikes;

  Rental({
    this.name,
    this.address,
    this.distance,
    this.rating,
    this.isOpen,
    this.ready,
    this.booked,
    this.inUse,
    this.picture,
    this.pictureBackgroundRgbColor,
    this.bikes,
  });

  factory Rental.fromJson(Map<String, dynamic> json) => Rental(
        name: json["name"],
        address: json["address"],
        distance: json["distance"],
        rating: json["rating"],
        isOpen: json["isOpen"] as bool,
        ready: json["ready"],
        booked: json["booked"],
        inUse: json["inUse"],
        picture: json["picture"],
        pictureBackgroundRgbColor: json["pictureBackgroundRgbColor"] == null
            ? null
            : RgbColor.fromJson(json["pictureBackgroundRgbColor"]),
        bikes: json["bikes"] == null
            ? []
            : List<Bike>.from(json["bikes"]!.map((x) => Bike.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "distance": distance,
        "rating": rating,
        "isOpen": isOpen,
        "ready": ready,
        "booked": booked,
        "inUse": inUse,
        "picture": picture,
        "pictureBackgroundRgbColor": pictureBackgroundRgbColor?.toJson(),
        "bikes": bikes == null
            ? []
            : List<dynamic>.from(bikes!.map((x) => x.toJson())),
      };
}
