class SignUpModel {
  final String uid;
  final int phoneNumber;
  final String fullName;
  final String dateOfBirth;
  final String profilePicture;

  SignUpModel(
      {required this.uid,
      required this.phoneNumber,
      required this.fullName,
      required this.dateOfBirth,
      required this.profilePicture});
}
