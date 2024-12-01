import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;

  const DetailImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.red, width: 2)),
      child: Image.network(image,
          fit: BoxFit.contain, alignment: Alignment.center),
    );
  }
}







// body: SingleChildScrollView(
//             padding: const EdgeInsets.only(top: 10.0),
//             physics: const BouncingScrollPhysics(),
//             child: Column(children: [
//               Row(children: [
//                 Expanded(
//                     child: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//                         child: Image.network(
//                           arguments.image,
//                           height: 500,
//                           fit: BoxFit.fitWidth,
//                           alignment: Alignment.center,
//                         )))
//               ]),
//             ]))





