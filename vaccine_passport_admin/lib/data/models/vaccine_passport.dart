import 'address.dart';

enum Gender { male, female, other }

class VaccinePassport {
  final String firstName;
  final String lastName;
  final Gender gender;
  final String email;
  final String phone;
  final Address address;
  final DateTime birthDate;
  final String healthCardNumber;

  VaccinePassport({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.email,
    required this.phone,
    required this.address,
    required this.birthDate,
    required this.healthCardNumber,
  });
}
