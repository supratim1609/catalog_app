import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL="https://media.licdn.com/dms/image/D4D03AQGrRB93QfT5IQ/profile-displayphoto-shrink_800_800/0/1668535255604?e=2147483647&v=beta&t=t3xQjamFD1T8G4IlykLcHmYAUtf_93TlRvR-YCrCC70";
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Supratim Dhara",style: TextStyle(color: Colors.white),),
                  accountEmail: Text("XXX@YYY.com",style: TextStyle(color: Colors.white),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  ),
            )
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text("Home", textScaleFactor:1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.person_rounded,color: Colors.white,),
              title: Text("Profile", textScaleFactor:1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.mail,color: Colors.white,),
              title: Text("Email", textScaleFactor:1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
