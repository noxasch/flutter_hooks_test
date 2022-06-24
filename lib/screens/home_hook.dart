import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeHook extends HookWidget {
  const HomeHook({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _numberNotifier = useState(0);

    // quite similar to react hook
    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (time) { 
        _numberNotifier.value = time.tick;
      });

      return timer.cancel;
    }, const []);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            _numberNotifier.value.toString(),
            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 32.0),
          ),
        ),
      );
  }
}
