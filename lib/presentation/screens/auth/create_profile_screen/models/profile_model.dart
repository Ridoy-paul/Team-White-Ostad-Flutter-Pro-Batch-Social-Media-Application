class ProfileModel {
  String? id = "";
  String? firstName;
  String? lastName;
  String? gender;
  String? email;
  String? phoneNum;
  String? address = "";
  String? city = "Dhaka";
  String? country = "Bangladesh";
  String? image;

  ProfileModel({
    this.id = "",
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.email,
     this.phoneNum="",
     this.address="",
    this.city="Dhaka",
    this.country="Bangladesh",
    this.image="",
  });

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['mobile'];
    phoneNum = json['city'];
    address = json['shippingAddress'];
    city = json['email'];
    country = json['created_at'];
    image = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['phoneNum'] = phoneNum;
    data['address'] = address;
    data['city'] = city;
    data['country'] = country;
    data['image'] = image;
    return data;
  }
}
