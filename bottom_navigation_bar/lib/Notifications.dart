import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Notifications",
            style: GoogleFonts.sourceSansPro(
                color: Colors.white, fontWeight: FontWeight.bold)),
      leading: IconButton(onPressed: (){},icon: Icon(Icons.more_vert_outlined,color: Colors.white,)),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))] 
      ),
      body: Center(
        child: Icon(Icons.notifications),
      ),
    );
  }
}