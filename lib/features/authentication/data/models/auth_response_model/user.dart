class User {
  String? firstName;
  String? lastName;
  String? email;
  String? address;
  String? role;
  String? phoneNumber;
  String? gender;
  String? photo;
  bool? active;
  String? id;
  int? v;

  User({
    this.firstName,
    this.lastName,
    this.email,
    this.address,
    this.role,
    this.phoneNumber,
    this.gender,
    this.photo,
    this.active,
    this.id,
    this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        email: json['email'] as String?,
        address: json['address'] as String?,
        role: json['role'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        gender: json['gender'] as String?,
        photo: json['photo'] as String?,
        active: json['active'] as bool?,
        id: json['_id'] as String?,
        v: json['__v'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'address': address,
        'role': role,
        'phoneNumber': phoneNumber,
        'gender': gender,
        'photo': photo,
        'active': active,
        '_id': id,
        '__v': v,
      };
}
