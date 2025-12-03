import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_to_profile/countries.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 24, 42),
        foregroundColor: Colors.white,
        title: Row(children: [Text("Study Abroad")]),
        actions: [
          Text("Log Out"),
          Padding(padding: EdgeInsets.only(right: 5)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Asset/Images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Welcome to The Study Abroad",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7, // box width
              height: 200, // box height
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                  255,
                  25,
                  45,
                  61,
                ), // background color
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      59,
                      56,
                      56,
                    ).withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
              ),

              child: Text(
                "Studying abroad is a life-changing opportunity that allows students to experience education beyond the classroom. It opens the door to new cultures, diverse perspectives, and global learning environments. Living in a different country helps students become more independent, confident, and adaptable. They learn to communicate with people from various backgrounds, build international friendships, and explore new ways of thinking. Studying abroad also strengthens career opportunities, as employers value global exposure and cultural understanding. Overall, it is a journey of personal growth, academic improvement, and unforgettable experiences that shape a brighter future.",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Countries();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 177, 168, 134),
                foregroundColor: Colors.black,
                fixedSize: Size(200, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get To Know More",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8), // spacing
                  Icon(Icons.arrow_right_alt),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 25, 45, 61),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 244, 243, 243),
        child: ListTileTheme(
          textColor: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 214, 164),
                    borderRadius: BorderRadius.circular(
                      7,
                    ), // <-- DrawerHeader background color
                  ),
                  accountName: Text(
                    "Nazma Begum",
                    style: TextStyle(
                      color: Colors.black, // <-- name text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    "nazma123@gmail.com",
                    style: TextStyle(
                      color: Colors.black, // <-- name text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Countries();
                      },
                    ),
                  );
                },
                leading: Icon(Icons.info_sharp),
                title: Text("About"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.contact_emergency),
                title: Text("Contact"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
