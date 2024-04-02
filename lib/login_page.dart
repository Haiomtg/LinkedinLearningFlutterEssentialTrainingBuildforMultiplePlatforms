import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button Clicked');
          },
        ),
        //
      body: Column(
        children: [
          Text(
            'Let\'s sign you in',
            style: TextStyle(
              fontSize: 30,
              color: Colors.brown,
              fontWeight: FontWeight.bold, letterSpacing: 0.5
            ),
          ),
          Text('Welcome back! \n You \'ve been missed',
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueGrey,),
            ),
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/BLACKPINK_PUBG_Mobile_Sept_2020_ad_%28derived%29.jpg/220px-BLACKPINK_PUBG_Mobile_Sept_2020_ad_%28derived%29.jpg',
          height: 200,
          ),
          Container(
            height: 150,
            width: 150,
            child: FlutterLogo(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2pB4O4ecvrd1rcBxaU7AevBe3tLh28TLfqQ&usqp=CAU'
                ),
              ),
                color: Colors.blue,
              borderRadius: BorderRadius.circular(24)
            ),
          )
      ],
      )
    );
  }
}
