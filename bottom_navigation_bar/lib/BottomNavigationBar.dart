import 'package:bottom_navigation_bar/Home.dart';
import 'package:bottom_navigation_bar/Notifications.dart';
import 'package:bottom_navigation_bar/Profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  @override

  int currentTab = 0;
  Widget currentScreen = Home();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: PageStorageBucket(),
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() => {
                    currentTab = 0,
                    currentScreen = Home()
                  });
                },
                minWidth: 40,
                child: Container(
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(currentTab == 0 ? 30 : 0),
                    color: currentTab ==0 ? Colors.white : Colors.black,

                  ),
                  height: 50,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Icon(Icons.home,color: currentTab ==0 ? Colors.black : Colors.white,),
                    Text("Home",style: GoogleFonts.sourceSansPro(
                      color: currentTab ==0 ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 10
                    ),)
                    ]),
                ),
              ),

              MaterialButton(
                onPressed: () {
                  setState(() => {
                    currentTab = 1,
                    currentScreen = Notifications()
                  });
                },
                minWidth: 40,
                child: Container(
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(currentTab == 1 ? 30 : 0),
                    color: currentTab ==1 ? Colors.white : Colors.black,

                  ),
                  height: 50,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Icon(Icons.notifications,color: currentTab ==1 ? Colors.black : Colors.white,),
                    Text("Notifications",style: GoogleFonts.sourceSansPro(
                      color: currentTab ==1 ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 10
                    ),)
                    ]),
                ),
              ),
            MaterialButton(
                onPressed: () {
                  setState(() => {
                    currentTab = 2,
                    currentScreen = Profile()
                  });
                },
                minWidth: 40,
                child: Container(
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(currentTab == 2 ? 30 : 0),
                    color: currentTab ==2 ? Colors.white : Colors.black,

                  ),
                  height: 50,
                  // padding: EdgeInsets.all(10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Icon(Icons.person,color: currentTab == 2 ? Colors.black : Colors.white,),
                    Text("Profile",style: GoogleFonts.sourceSansPro(
                      color: currentTab ==2 ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 10
                    ),)
                    ]),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
