import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../notifiers/get_data/get_data_notifier.dart';
import '../notifiers/get_data/get_data_state.dart';

final getDataProvider =
    NotifierProvider<GetDataNotifier, GetDataState>(GetDataNotifier.new);
