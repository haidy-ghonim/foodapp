
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const String signup = "signup";

  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // OUR FORMA KEY
  final _formkey = GlobalKey<FormState>();

  //editing controller
  final firstNameEditingController = TextEditingController();
  final lastNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmpasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // first name filed
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      //validator: (){},
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.account_circle,
          color: Colors.black26,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );


    // last name filed
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      //validator: (){},
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon:  const Icon(
          Icons.person,
          color: Colors.black26,
        ),
        contentPadding:  const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Last Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );


    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon:  const Icon(
          Icons.email_rounded,
          color: Colors.black26,
        ),
        contentPadding:  const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "E-mail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,

      //validator: (){},
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon:  const Icon(
          Icons.vpn_key,
          color: Colors.black26,
        ),
        contentPadding:  const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "PassWord",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );


    //confirm password field
    final confirmpasswordField = TextFormField(
      autofocus: false,
      controller: confirmpasswordEditingController,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        confirmpasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon:  const Icon(Icons.password_outlined,
          color: Colors.black26,),
        contentPadding:  const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm PassWord",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );


    //sigup buttom
    final signUpButton = Material(
      elevation: 5,

      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
        padding:  const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){},
        child:   const Text( "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      );





    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation:0 ,
        leading: IconButton(
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();

          },
          icon: const Icon(Icons.arrow_back_rounded,
            color: Colors.black38,),
        ),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding:const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 210,
                      child: Center(
                        child: Image.asset(
                          "images/signup.jpg",
                          scale: 2 ,
                          fit: BoxFit.contain ,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    firstNameField,
                    const SizedBox(height: 10),
                    lastNameField,
                    const SizedBox(height: 10),
                    emailField,
                    const SizedBox(height: 10),
                    passwordField,
                    const SizedBox(height: 10),
                    confirmpasswordField,
                    const SizedBox(height: 10),
                    signUpButton,
                    const SizedBox(height: 10),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
