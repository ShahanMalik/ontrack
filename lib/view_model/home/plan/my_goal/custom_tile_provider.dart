import 'package:flutter_riverpod/flutter_riverpod.dart';

final isExpandedProvider =
    StateProvider.family<bool, String>((ref, id) => false);
