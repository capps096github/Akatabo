// import '../../../akatabo_exporter.dart';

// class PasswordField extends StatelessWidget {
//   const PasswordField({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LabelledCustomTextField(
//       customTextField: CustomTextField(
//         numLines: 3,
//         initialValue: categoryText,
//         onChanged: (category) =>
//             ref.read(categoryTextProvider.notifier).state = category,
//         //  TODO: d this for all our login fields that after entering the last one which is password, lets sign in or signup automatically when enter key is pressed
//         onFieldSubmitted: (category) {
//           // update the category selected
//           ref.read(selectedCategoryProvider.notifier).state =
//               customCategory.copyWith(
//             title: categoryText,
//             singularTitle: categoryText,
//             uid: 'category',
//           );
//         },
//         validator: (category) {
//           if (category == null || category.isEmpty) {
//             return "Hey $userName, please type in the category you want us to design for you";
//           }

//           return null;
//         },
//         keyboardType: TextInputType.text,
//         textInputAction: TextInputAction.done,
//         hintText: "Username",
//       ),
//       label: 'Enter your username',
//       labelTextColor: akataboWhite,
//     );
//   }
// }
