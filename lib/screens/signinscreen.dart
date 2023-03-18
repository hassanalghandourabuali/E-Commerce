import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  String? _emailError;
  String? _passwordError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = ForSignIn;
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer = TapGestureRecognizer();
    _emailTextController.dispose();
    _passwordTextController.dispose();
  }
  void ForSignIn(){
    Navigator.pushReplacementNamed(context, '/registerformscreen');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        'images/logo.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Welcome to Lafyuu',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff223263),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'sign in to continue',
                style: GoogleFonts.poppins(
                    color: Color(0xff9098B1), fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 28,
              ),
              Form(
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Email must contain @ in this field';
                  //   }
                  // },
                controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixIconColor: Color(0xff9098B1),
                    hintText: 'Your Email',
                    errorText: _emailError,
                    hintStyle: GoogleFonts.poppins(color: Color(0xff9098B1)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffEBF0FF),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Form(
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return ' Oops! Your Password Is Not Correct';
                  //   }
                  // },
                  controller: _passwordTextController,
                  obscuringCharacter: ('*'),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    prefixIconColor: Color(0xff9098B1),
                    hintText: ('Password'),
                    errorText: _passwordError,
                    hintStyle: GoogleFonts.poppins(color: Color(0xff9098B1)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              ElevatedButton(
                onPressed: () => performlogin(),
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff40BFFF),
                  minimumSize: Size(360, 57),
                ),
              ),
              SizedBox(
                height: 31,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Divider(
                          height: 20,
                          color: Colors.black38.withOpacity(0.2),
                          endIndent: 20,
                        ),
                      ),
                    ),
                    Container(
                      child: Text('OR'),
                    ),
                    Expanded(
                      child: Container(
                        child: Divider(
                          height: 20,
                          color: Colors.black38.withOpacity(0.2),
                          indent: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1, color: Color(0xffebf0ff)),
                    primary: Colors.transparent,
                    minimumSize: Size(double.infinity, 57),
                    elevation: 0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        FontAwesomeIcons.google,
                        color: Color(
                          0xff9098B1,
                        ),
                      ),
                      margin: EdgeInsets.only(left: 16, right: 80),
                    ),
                    Center(
                      child: Text(
                        'Login With Google',
                        style: GoogleFonts.poppins(
                          color: Color(
                            0xff9098B1,
                          ),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1, color: Color(0xffebf0ff)),
                    primary: Colors.transparent,
                    minimumSize: Size(double.infinity, 57),
                    elevation: 0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Color(
                          0xff4092FF,
                        ),
                      ),
                      margin: EdgeInsets.only(left: 16, right: 80),
                    ),
                    Center(
                      child: Text(
                        'Login With Facebook',
                        style: GoogleFonts.poppins(
                          color: Color(
                            0xff9098B1,
                          ),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/signinscreen'),
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff40BFFF),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Dont have a account ?',
                      style: GoogleFonts.poppins(
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      // recognizer: _tapGestureRecognizer,
                      text: 'Register',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
  void login() {
    Navigator.pushNamed(context, '/homescreen');
  }

  void performlogin() {
    if (checkdata()) {
      login();
    }
  }

  bool checkdata() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    } else {
      checkError();
    }
    showSnackBar(message: 'Please enter all field in this page', error: true);
    return false;
  }

  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: error ? Colors.red : Colors.blue,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void checkError() {
    setState(() {
      _emailError = _emailTextController.text.isEmpty
          ? 'Please must contain @ in this field '
          : null;
      _passwordError = _passwordTextController.text.isEmpty
          ? 'Oops! Your Password Is Not Correct'
          : null;
    });
  }
}
