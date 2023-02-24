import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skyhigh/presentation/components/button_widget.dart';
import 'package:skyhigh/presentation/screens/show_chart_screen.dart';
import 'package:skyhigh/state/providers/get_data_provider.dart';

import '../../state/notifiers/get_data/get_data_state.dart';
import '../../state/providers/showSpinner.dart';

class GetDataScreen extends StatelessWidget {
  const GetDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'SkyHigh',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer(
            builder: (context, ref, child) {
              // take care of displaying loading screen
              ref.listen<GetDataState>(getDataProvider, (_, newState) {
                if (newState is LoadedState) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ShowChartScreen()),
                    ),
                  );
                } else if (newState is ErrorState) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                      content: Text(newState.errorText),
                    ));
                }
              });

              final isLoading = ref.watch(isLoadingProvider);
              if (isLoading) {
                return const CircularProgressIndicator();
              } else {
                return const ButtonView();
              }
            },
          ),
        ),
      ),
    );
  }
}

class ButtonView extends ConsumerWidget {
  const ButtonView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SdButton(
      text: 'Get SkyHigh Data',
      bgColor: Colors.black,
      onTap: () {
        ref.read(getDataProvider.notifier).getAllData();
      },
    );
  }
}
