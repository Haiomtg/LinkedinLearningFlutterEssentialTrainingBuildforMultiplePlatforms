import 'package:flutter/material.dart';
import 'package:untitled1/widgets/chat_buble.dart';
import 'package:untitled1/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi Pooja!'),
        actions: [
          IconButton(
              onPressed: (){
                print('Icon pressed');
            }, icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
          child: ListView.builder(
            itemCount: 10,
              itemBuilder: (context, index) {
            return ChatBuble(
                alignment: index % 2 == 0
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                message: "Hello, this is Tom!"
            );
          }),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
