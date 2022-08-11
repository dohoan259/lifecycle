// stateless
// stateful widget

import 'package:flutter/cupertino.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key) {
    print('hoan.dv: FirstPage constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('hoan.dv: FirstPage build');
    return Container();
  }
}
