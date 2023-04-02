class AkataboUser {
  // profile pic
  final String profilePic;

  // username
  final String username;

  // email
  final String email;

  // phone
  final String phone;

  // level of Education (this could be a class in the future but for now use a string)
  final String levelOfEduc;

  // address (class later)
  final String address;

  // billing details (class later)
  final String billingDetails;

  AkataboUser({
    required this.profilePic,
    required this.username,
    required this.email,
    required this.phone,
    required this.levelOfEduc,
    required this.address,
    required this.billingDetails,
  });

  /// first name
  String get firstName => username.split(' ')[0];

  @override
  String toString() {
    return 'AkataboUser(profilePic: $profilePic, username: $username, email: $email, phone: $phone, levelOfEduc: $levelOfEduc, address: $address, billingDetails: $billingDetails)';
  }
}

