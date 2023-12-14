import 'package:flutter/material.dart';
import 'package:foodapp/signup.dart';
import 'package:lottie/lottie.dart';

import 'product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignIn(title: 'Flutter Demo Home Page'),
    );
  }
}



class SignIn extends StatefulWidget {
  static const String signin = "signin";
   static const String proudcetscreen = "proudcetscreen";

  const SignIn({super.key, required String title});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // form key
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.email,
          color: Colors.black26,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter your E-mail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,

      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.vpn_key,
          color: Colors.black26,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter your password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final loginButtom = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUp(),
            ),
          );
        } ,

        child: const Text(
          "Sign In",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 260,
                      child: Center(
                        child: Image.asset(
                          "images/signin.jpg",
                          scale:1,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    emailField,
                    const SizedBox(height: 10),
                    passwordField,
                    const SizedBox(height: 20),
                    loginButtom,
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Donot have an acount?',
                          style: TextStyle(fontSize: 15),
                        ),
                        const SizedBox(width: 5,),
                        // page sig in go to it
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(builder:
                            //     (context) => const SignUp()));
                          },
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LottieBuilder.network(
                            'https://lottie.host/37516613-a142-495d-8cd5-b90aece34349/ZfzFpLuLcO.json',
                            height: 40,
                            width: 40,
                          ),
                          LottieBuilder.network(
                            'https://lottie.host/a8627238-404f-4966-8fa5-4cddcfdc4c91/EDMYUBT5pA.json',
                            height: 40,
                            width: 40,
                          ),
                          LottieBuilder.network(
                            'https://lottie.host/0785019d-c827-40c3-b4d7-e60d7775f3d8/lxGbFlPDQA.json',
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }}
