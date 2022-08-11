import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  int id;

  SecondScreen({Key? key, required this.id}) : super(key: key) {
    print('hoan.dv: SecondScreen constructor');
  }

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    print('hoan.dv: SecondScreen initState');

    // call API theo id
    final id = widget.id;
    super.initState();
  }

  // animation
  @override
  void didChangeDependencies() {
    print('hoan.dv: SecondScreen didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant SecondScreen oldWidget) {
    print('hoan.dv: SecondScreen didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('hoan.dv: SecondScreen build');
    return Scaffold(
      // body: Stack(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.grey,
      //     ),
      //     Positioned(
      //       right: 10,
      //       bottom: 20,
      //       child: Container(
      //         height: 50,
      //         width: 100,
      //         color: Colors.red,
      //       ),
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('hoan.dv: tap to text a');
            },
            child: Text(
              'Create new account',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // ripple effect
          InkWell(
            onTap: () {
              print('hoan.dv: tap to text b');
            },
            child: Text(
              'Create new account',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            // color: Colors.blue,
            child: TextButton(
                onPressed: () {
                  // thay doi du lieu
                  setState(() {});
                },
                child: Text('Click me')),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // hủy đăng ký, tránh memory leak
    print('hoan.dv: SecondScreen dispose');
    super.dispose();
  }
}
