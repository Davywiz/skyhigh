import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/state/notifiers/get_data/get_data_state.dart';
import 'package:skyhigh/state/providers/get_data_provider.dart';

import '../../models/product.dart';

final showListProvider = Provider<List<Product>>((ref) {
  final newState = ref.watch(getDataProvider);

  if (newState is LoadedState) {
    return newState.data;
  }
  return [];
});
