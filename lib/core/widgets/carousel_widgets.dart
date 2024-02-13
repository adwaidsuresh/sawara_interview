import 'package:flutter/material.dart';

class container1 extends StatelessWidget {
  const container1({
    super.key,
    required this.pic,
    required this.selected,
  });
  final Image pic;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1.5,
              style: selected ? BorderStyle.solid : BorderStyle.none,
              color: Color.fromARGB(255, 138, 135, 135),
              strokeAlign: BorderSide.strokeAlignInside),
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 239, 238, 238)),
      child: pic,
    );
  }
}
