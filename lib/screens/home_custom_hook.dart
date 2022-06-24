import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_exercise/hooks/timer_hook.dart';

class HomeHook extends HookWidget {
  const HomeHook({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = useInfiniteTimer(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            number.toString(),
            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 32.0),
          ),
        ),
      );
  }
}
