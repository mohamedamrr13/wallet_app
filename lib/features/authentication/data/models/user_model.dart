class UserModel {
  String firstName;
  String lastName;
  String email;
  String? role;
  String? address;
  String? phoneNumber;
  String? gender;
  String password;
  String passwordConfirm;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.role = 'parent',
    this.address = 'Alexandria, Egypt',
    this.phoneNumber = '01247896637',
    this.gender = 'male',
    required this.password,
    required this.passwordConfirm,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        email: json['email'] as String,
        role: json['role'] as String?,
        address: json['address'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        gender: json['gender'] as String?,
        password: json['password'] as String,
        passwordConfirm: json['passwordConfirm'] as String,
      );

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'role': role,
        'address': address,
        'phoneNumber': phoneNumber,
        'gender': gender,
        'password': password,
        'passwordConfirm': passwordConfirm,
      };
}
