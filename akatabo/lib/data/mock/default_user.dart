// default user
import '../../akatabo_exporter.dart';

final akataboDefaultUserProvider = Provider<AkataboUser>((ref) {
  // Credentials
  final email = ref.watch(emailProvider);
  final name = ref.watch(userNameProvider);

  return AkataboUser(
    userId: const Uuid().v4(),
    profilePic:
        'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    username: name,
    email: email,
    phoneNumber: '08012345678',
    levelOfEduc: 'Primary 1',
    address: 'Akatabo, Lagos, Nigeria',
    billingDetails: '9560045678392',
  );
});
