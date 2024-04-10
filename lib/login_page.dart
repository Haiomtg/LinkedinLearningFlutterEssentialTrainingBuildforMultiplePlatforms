import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/chat_page.dart';
import 'package:untitled1/utils/spaces.dart';
import 'package:untitled1/utils/textfield_styles.dart';
import 'package:untitled1/widgets/login_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginUser(context) {

    if(_formkey.currentState!=null && _formkey.currentState!.validate()) {

      print(userNameController.text);
      print(passwordController.text);
      
      Navigator.pushReplacementNamed(context, '/chat', arguments: '${userNameController.text}');

      print('Login successful!');
    } else {
      print('Not successfel');
    }
  }
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  final _mainUrl = "https://poojabhaumik.com";
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
              Image.asset('assets/blackpink.jpg',
              height: 200,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    LoginTextField(
                      hintText : "Enter your username",
                      validator: (value) {
                        if(value!=null && value.isNotEmpty && value.length < 5) {
                          return "Your username should be more than 5 characters";
                        } else if (value!=null && value.isEmpty) {
                          return "Please type your username";
                        }
                        return null;
                      },
                      controller: userNameController,

                    ),
                    verticalSpacing(24),
                    LoginTextField(
                      hasAsterisks: true,
                      controller: passwordController,
                      hintText: 'Enter your password',
                    ),
                    verticalSpacing(24),
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
              GestureDetector(
                onTap: () async {
                  //todo: Navigate to browser
                  print('Link clicked');
                  if(!await launch(_mainUrl)) {
                    throw 'Could not launch this';
                  }
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
