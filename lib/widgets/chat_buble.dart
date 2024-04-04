import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const ChatBuble({Key? key, required this.alignment, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$message', style: TextStyle(fontSize: 20, color: Colors.white),),
            Image.network('https://i.scdn.co/image/ab6761610000e5ebc9690bc711d04b3d4fd4b87c', height: 200,)
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            )
        ),
      ),
    );
  }
}
