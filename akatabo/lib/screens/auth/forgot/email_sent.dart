// Project imports:

import 'package:flutter/cupertino.dart';

import '../../../akatabo_exporter.dart';
import '../auth_providers.dart';
import '../components/auth_option_text.dart';

class EmailSent extends ConsumerWidget {
  const EmailSent({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ExpandedScrollingColumn(
      key: const PageStorageKey("forgot"),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Icon(
          CupertinoIcons.mail_solid,
          color: akataboRed,
          size: 80,
        ),
        const VerticalSpace(of: 50),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "We have sent instructions on how to reset your Password to your Email.",
            textAlign: TextAlign.center,
            style: TextStyle(
              wordSpacing: 2,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.31,
              color: akataboWhite,
            ),
          ),
        ),
        const Spacer(),
        const Text(
          "Didn't See the Email? (Try Again Here)",
          style: TextStyle(
            color: akataboRed,
            fontWeight: FontWeight.bold,
            height: 1.71,
          ),
        ),
        const VerticalSpace(of: 20),
        AppButton(
          label: "TRY AGAIN",
          icon: CupertinoIcons.arrow_2_squarepath,
          onTap: () {
            // Is Email Sent
            ref.read(isResetEmailSentProvider.notifier).state = false;
          },
          textColor: akataboColor,
          buttonColor: akataboWhite,
        ),
        const Spacer(),
        const VerticalSpace(of: 50),
        const AuthOptionText(question: "Reset Password?"),
        const VerticalSpace(of: 100),
      ],
    );
  }
}
