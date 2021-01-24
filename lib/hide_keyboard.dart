library hide_keyboard;

import 'package:flutter/cupertino.dart';

/// A Calculator.
// class Calculator {
//   /// Returns [value] plus 1.
//   int addOne(int value) => value + 1;
// }

class HideKeyboard extends StatelessWidget {
  final Widget child;
  const HideKeyboard({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus.unfocus(),
      child: child,
    );
  }

  static now(){
    FocusManager.instance.primaryFocus.unfocus();
  }
}
