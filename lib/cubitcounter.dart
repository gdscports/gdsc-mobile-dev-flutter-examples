import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc_counter_flutter/icontextrow.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void add({int value = 1}) => emit(state + value);
  void subtract({int value = 1}) => emit(state - value);
}

class CubitCounterWidget extends StatelessWidget {
  const CubitCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: CounterCubit(),
      builder: (context, count) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => context.read<CounterCubit>().subtract(),
              child: const IconTextRow(icon: Icons.remove, text: "Subtract"),
            ),
            const Spacer(),
            Text("Current Value: $count"),
            const Spacer(),
            MaterialButton(
              onPressed: () => context.read<CounterCubit>().add(),
              child: const IconTextRow(icon: Icons.add, text: "Add"),
            ),
          ],
        ),
      ),
    );
  }
}
