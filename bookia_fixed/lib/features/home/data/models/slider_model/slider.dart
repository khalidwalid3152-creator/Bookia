class Sliderimage {
  String? image;

  Sliderimage({this.image});

  factory Sliderimage.fromJson(Map<String, dynamic> json) =>
      Sliderimage(image: json['image'] as String?);

  Map<String, dynamic> toJson() => {'image': image};
}
