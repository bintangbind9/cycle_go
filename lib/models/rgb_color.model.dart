class RgbColor {
  final int? r;
  final int? g;
  final int? b;

  RgbColor({
    this.r,
    this.g,
    this.b,
  });

  factory RgbColor.fromJson(Map<String, dynamic> json) => RgbColor(
        r: json["r"],
        g: json["g"],
        b: json["b"],
      );

  Map<String, dynamic> toJson() => {
        "r": r,
        "g": g,
        "b": b,
      };
}
