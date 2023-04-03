import 'package:flutter/cupertino.dart';

import '../../../akatabo_exporter.dart';
import 'info_tile.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key, required this.appUser});

  final AkataboUser appUser;

  @override
  Widget build(BuildContext context) {
    // get all thumbsUser details
    final userId = appUser.userId;
    final name = appUser.username;
    final email = appUser.email;
    final phoneNumber = appUser.phoneNumber;
    final address = appUser.address;
    final levelOfEducation = appUser.levelOfEduc;
    final billingDetails = appUser.billingDetailsInfo;

    return Column(
      children: [
        // user id
        InfoTile(
          icon: CupertinoIcons.signature,
          trailingIcon: Icons.verified,
          label: "USER ID",
          onTap: null,
          altTooltip: "Your User ID",
          subtitle: userId,
        ),

        // name
        InfoTile(
          icon: Icons.person,
          label: 'Name',
          subtitle: name,
          onTap: () {
            //TODO Edit name
          },
        ),

        // email
        InfoTile(
          icon: Icons.email,
          label: 'Email',
          subtitle: email,
          onTap: () {
            //TODO Edit email
          },
        ),

        // phone number
        InfoTile(
          icon: Icons.phone_outlined,
          label: 'Phone Number',
          subtitle: phoneNumber,
          onTap: () {
            //TODO Add phone number
          },
        ),

        // level of education
        InfoTile(
          icon: Icons.school,
          label: 'Level of Education',
          subtitle: levelOfEducation,
          onTap: () {
            //TODO Add level of education
          },
        ),

        // address
        InfoTile(
          icon: CupertinoIcons.location,
          label: 'Address',
          subtitle: 'Add your address',
          onTap: () {
            //TODO Add address
          },
        ),

        // billing address
        InfoTile(
          icon: CupertinoIcons.creditcard,
          label: 'Billing Address',
          subtitle: billingDetails,
          onTap: () {
            //TODO Add billing address
          },
        ),

        // help
        InfoTile(
          icon: Icons.help,
          trailingIcon: null,
          label: 'Help',
          subtitle: 'Get help with your account',
          altTooltip: 'Get help',
          onTap: () {
            //TODO Get help
          },
        ),
      ],
    );
  }
}
