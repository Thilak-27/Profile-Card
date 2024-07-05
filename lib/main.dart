import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ImRich());
}

class ImRich extends StatelessWidget {
  const ImRich({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            //SafeArea is a widget in Flutter that helps you avoid overlapping with the screen's notch
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/images/pic.jpg'),
                  ),
                  const Text(
                    'Sreethilak HS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Flutter Developer'.toUpperCase(),
                    style: GoogleFonts.sairaSemiCondensed(
                        color: Colors.white70,
                        fontSize: 25,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    //to give fixed size to a widget
                    width: 150, //length of the line

                    child: Divider(
                      height: 10,

                      thickness: 1,
                      color: Colors.white54,
                    ),
                  ),
                  const Card(
                    elevation: 8, //provides shadows
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(
                        vertical:
                            10, //sets the top and bottom margins to 10 pixels each
                        horizontal: //This sets the left and right margins to 30 pixels each
                            30), //margin allows you to add space around the widget
                    child: ListTile(
                      //represents a single row in a list,used to display a list of items, such as a list of contacts
                      leading: Icon(
                        //leading  specifies the widget to display at the beginning of the row icon displays a graphical icon
                        Icons.phone, //phone icon
                        color: Colors.teal,
                      ),
                      title: Text(
                        '8547585902',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ),
                  const Card(
                    elevation: 8,
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'sreethilakh@gmail.com',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ),
                  const Card(
                    elevation: 8,
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: ListTile(
                      leading: Text(
                        'Skills:',
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      title: Text(
                        'Python,C,Java,HTML,CSS,Flutter',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
