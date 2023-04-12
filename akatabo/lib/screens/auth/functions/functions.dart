// TODO get updated auth functions from Calcut

/// auth simulation function thet reurns a futq delayed for 3 seconds
Future<bool> authSimulation() async {
  await Future.delayed(const Duration(seconds: 3));
  return true;
}
