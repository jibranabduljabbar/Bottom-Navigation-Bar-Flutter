import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Profile",
            style: GoogleFonts.sourceSansPro(
                color: Colors.white, fontWeight: FontWeight.bold)),
      leading: IconButton(onPressed: (){},icon: Icon(Icons.more_vert_outlined,color: Colors.white,)),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))] 
      ),
      body: Center(
        child: Icon(Icons.person)
      ),
    );
  }
}