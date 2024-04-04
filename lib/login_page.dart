import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  void loginUser() {
    print(userNameController.text);
    print(passwordController.text);
    print('Login successful!');
  }
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Let\'s sign you in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold, letterSpacing: 0.5
                ),
              ),
              Text(
                'Welcome back! \n You \'ve been missed',
                textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blueGrey,),
                ),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/BLACKPINK_PUBG_Mobile_Sept_2020_ad_%28derived%29.jpg/220px-BLACKPINK_PUBG_Mobile_Sept_2020_ad_%28derived%29.jpg',
              height: 200,
              ),
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  hintText: 'Add your username',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Add your password',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: loginUser,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),)
              ),
              // ignore: deprecated_member_use
              InkWell(
                onDoubleTap: () {
                  //todo: Navigate to browser
                  print('Link clicked');
                },
                onLongPress: () {
                  print('onLongPressed');
                },
                child: Column(
                  children: [
                    Text('Find us on '),
                    Text('https//tom.com'),
                  ],
                ),
              ),
          ],
          ),
        ),
      )
    );
  }
}
