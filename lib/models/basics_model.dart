import 'package:personal_site/models/profiles_model.dart';

class BasicsModel {
  final String? name;
  final String? label;
  final String? image;
  final String? summary;
  final List<ProfileModel>? profiles;
  final String? email;
  final String? phone;

  BasicsModel({
    this.name,
    this.label,
    this.image,
    this.summary,
    this.profiles,
    this.email,
    this.phone,
  });

  factory BasicsModel.fromJson(Map<String, dynamic> json) => BasicsModel(
        name: json["name"],
        label: json["label"],
        image: json["image"],
        summary: json["summary"],
        profiles: List<ProfileModel>.from(
            json["profiles"].map((x) => ProfileModel.fromJson(x))),
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "label": label,
        "image": image,
        "summary": summary,
        "profiles": profiles?.map((e) => e.toJson()).toList() ?? [],
        "email": email,
        "phone": phone,
      };

  @override
  String toString() {
    return 'BasicsModel{name: $name, label: $label, image: $image, summary: $summary, profiles: $profiles, email: $email, phone: $phone}';
  }
}
