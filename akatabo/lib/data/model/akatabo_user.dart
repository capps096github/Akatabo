import 'dart:convert';

class AkataboUser {
  // profile pic
  final String profilePic;

  // username
  final String username;

  // email
  final String email;

  // phone
  final String phoneNumber;

  // level of Education (this could be a class in the future but for now use a string)
  final String levelOfEduc;

  // address (class later)
  final String address;

  // billing details (class later)
  final String billingDetails;

  // user id
  final String userId;

  AkataboUser({
    required this.userId,
    required this.profilePic,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.levelOfEduc,
    required this.address,
    required this.billingDetails,
  })
  // : userId = const FirebaseAuth.instance.currentUser!.uid get id from here
  ;

  /// first name
  String get firstName => username.split(' ')[0];

  /// billing details info, this shows the first 3 and last 1 digits of the billingDetails
  /// e.g 1234567890 => 123******0
  String get billingDetailsInfo {
    final first3 = billingDetails.substring(0, 3);
    final last1 = billingDetails.substring(billingDetails.length - 1);
    return '$first3******$last1';
  }


  

  @override
  String toString() {
    return 'AkataboUser(profilePic: $profilePic, username: $username, email: $email, phone: $phoneNumber, levelOfEduc: $levelOfEduc, address: $address, billingDetails: $billingDetails)';
  }

  Map<String, dynamic> toFirestore() {
    
    // 
    return {
      'profilePic': profilePic,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'levelOfEduc': levelOfEduc,
      'address': address,
      'billingDetails': billingDetails,
      'userId': userId,
    };
  }

  factory AkataboUser.fromFirestore({required Map<String, dynamic> userMap}) {

    // 
    return AkataboUser(
      profilePic: userMap['profilePic'] ?? '',
      username: userMap['username'] ?? '',
      email: userMap['email'] ?? '',
      phoneNumber: userMap['phoneNumber'] ?? '',
      levelOfEduc: userMap['levelOfEduc'] ?? '',
      address: userMap['address'] ?? '',
      billingDetails: userMap['billingDetails'] ?? '',
      userId: userMap['userId'] ?? '',
    );
  }

}
