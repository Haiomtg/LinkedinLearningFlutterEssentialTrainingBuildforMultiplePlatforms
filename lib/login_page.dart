import 'package:flutter/material.dart';
import 'package:untitled1/chat_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginUser(context) {

    if(_formkey.currentState!=null && _formkey.currentState!.validate()) {

      print(userNameController.text);
      print(passwordController.text);
      
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => ChatPage()));

      print('Login successful!');
    } else {
      print('Not successfel');
    }
  }
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi Tom!'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
              print('Icon pressed!');
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
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
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if(value!=null && value.isNotEmpty && value.length < 5) {
                          return "Your username should be more than 5 characters";
                        } else if (value!=null && value.isEmpty) {
                          return "Please type your username";
                        }
                        return null;
                      },
                      controller: userNameController,
                      decoration: InputDecoration(
                        hintText: 'Add your username',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Add your password',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    loginUser(context);
                  },
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
