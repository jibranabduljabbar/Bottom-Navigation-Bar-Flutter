import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Home",
            style: GoogleFonts.sourceSansPro(
                color: Colors.white, fontWeight: FontWeight.bold)),
      leading: IconButton(onPressed: (){},icon: Icon(Icons.more_vert_outlined,color: Colors.white,)),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))] 
      ),
      body: Center(child: Icon(Icons.home)),
    );
  }
}
