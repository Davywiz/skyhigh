import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/state/notifiers/get_data/get_data_state.dart';
import 'package:skyhigh/state/providers/get_data_provider.dart';

final isLoadingProvider = Provider<bool>((ref) {
  final newState = ref.watch(getDataProvider);

  return newState is LoadingState;
});
