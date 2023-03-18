import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  DateTime date = DateTime(2003, 1, 1);
  String _selectedword = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: TextButton(
          onPressed: () =>
              {Navigator.pushReplacementNamed(context, '/homescreen')},
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff9098B1),
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Divider(
                color: Color(0xffEBF0FF),
                thickness: 1,
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 0,
              child: ListTile(
                leading: Image(
                  image: AssetImage('images/profile.png'),
                ),
                title: Text(
                  'Maximus Gold',
                  style: GoogleFonts.poppins(
                      color: Color(0xff223263),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
                subtitle: Text(
                  '@derlaxy',
                  style: GoogleFonts.poppins(
                      color: Color(0xff9098B1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 400,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: Icon(Icons.female, color: Color(0xff40BFFF)),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gender',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff223263)),
                        ),
                        Text(
                          _selectedword,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9098B1)),
                        ),
                      ],
                    ),
                    trailing: DropdownButton(
                      icon: Icon(Icons.expand_more),
                      onTap: () {},
                      autofocus: true,
                      elevation: 0,
                      underline: SizedBox.fromSize(),
                      dropdownColor: Colors.grey.shade200,
                      focusColor: Colors.grey,
                      hint: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          'Choose Gender',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('Male'),
                          value: 'Male',
                        ),
                        DropdownMenuItem(
                          child: Text('Female'),
                          value: 'Female',
                        ),
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedword = newValue!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.cake_outlined, color: Color(0xff40BFFF)),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Birthday',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff223263)),
                        ),
                        Text(
                          '${date.year}/${date.month}/${date.day}',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9098B1)),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.expand_more),
                    onTap: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined, color: Color(0xff40BFFF)),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff223263)),
                        ),
                        Text(
                          'Derlaxy@yahoo.com',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9098B1),
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.expand_more),
                    onTap: () {
                      showmodalbtn1();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone_android,
                      color: Color(0xff40BFFF),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Phone Number',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff223263)),
                        ),
                        Text(
                          '(307) 555-0133',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9098B1)),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.expand_more),
                    onTap: () {
                      showmodalbtn2();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Color(0xff40BFFF),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Change Password',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff223263)),
                        ),
                        Text(
                          '•••••••••••••••••',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9098B1)),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.expand_more),
                    onTap: () {
                      showmodalbtn3();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showmodalbtn1() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade400,
            filled: true,
            contentPadding: EdgeInsets.all(16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 5,
              ),
            ),
            hintText: 'Enter your email here',
          ),
        );
      },
    );
  }

  void showmodalbtn2() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade400,
            filled: true,
            contentPadding: EdgeInsets.all(16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 5,
              ),
            ),
            hintText: 'Enter your phone number here',
          ),

        );
      },
    );
  }

  void showmodalbtn3() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return TextField(
          keyboardType: TextInputType.text,
          obscuringCharacter: '*',
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade400,
            filled: true,
            contentPadding: EdgeInsets.all(16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 5,
              ),
            ),
            hintText: 'Enter your password here',
          ),
        );
      },
    );
  }
}
