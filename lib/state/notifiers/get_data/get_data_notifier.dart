import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/state/providers/di_providers.dart';

import 'get_data_state.dart';

class GetDataNotifier extends Notifier<GetDataState> {
  @override
  GetDataState build() {
    return const GetDataInitial();
  }

  Future<void> getAllData() async {
    state = const LoadingState();
    try {
      final data = await ref.read(repositoryProvider).getData();
      state = LoadedState(data);
    } catch (error) {
      print(error);
      state = const ErrorState('Something went wrong');
    }
  }
}
