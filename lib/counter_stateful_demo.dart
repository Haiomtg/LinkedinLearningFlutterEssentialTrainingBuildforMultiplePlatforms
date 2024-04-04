import 'package:flutter/material.dart';

class CounterStateFul extends StatefulWidget {
  Color buttonColor;

   CounterStateFul({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateFul> createState() {
    State<CounterStateFul> stateClassAssociatedWithThisWidget =
      _CounterStateFulState();
    return stateClassAssociatedWithThisWidget;
  }
}

class _CounterStateFulState extends State<CounterStateFul> {
  int counter = 0;

  void increment() {
    if(mounted) {
      setState(() {
        counter++;
      });
    }
    print(counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: widget.buttonColor,
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
