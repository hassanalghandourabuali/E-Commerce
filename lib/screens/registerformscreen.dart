import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterFormScreen extends StatefulWidget {
  const RegisterFormScreen({Key? key}) : super(key: key);

  @override
  State<RegisterFormScreen> createState() => _RegisterFormScreenState();
}

class _RegisterFormScreenState extends State<RegisterFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 111,
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
                'Let’s Get Started',
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
                'Create an new account',
                style: GoogleFonts.poppins(
                    color: Color(0xff9098B1), fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.user,
                    color: Color(0xff9098B1),
                  ),
                  hintText: 'Full Name',
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xff9098B1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xff9098B1),
                  ),
                  hintText: 'Your Email',
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xff9098B1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xff9098B1),
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xff9098B1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Color(0xff9098B1),
                  ),
                  hintText: 'Password Again',
                  focusColor: Colors.red,
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xff9098B1),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/registerformscreen'),
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff40BFFF),
                  minimumSize: Size(double.infinity, 57),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: ' have a account ?',
                        style: GoogleFonts.poppins(
                          color: Color(0xff9098B1),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/homescreen'),
                      child: Text('Sign In'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
