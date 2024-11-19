import 'package:flutter_riverpod/flutter_riverpod.dart';

final switchProvider = StateProvider<bool>((ref) => false);

class SwitchController extends StateNotifier<bool> {
  SwitchController() : super(false);
}
