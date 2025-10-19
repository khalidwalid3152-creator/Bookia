import 'slider.dart';

class Data {
  List<Sliderimage>? sliders;

  Data({this.sliders});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    sliders: (json['sliders'] as List<dynamic>?)
        ?.map((e) => Sliderimage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'sliders': sliders?.map((e) => e.toJson()).toList(),
  };
}
