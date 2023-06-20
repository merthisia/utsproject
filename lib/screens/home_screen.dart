import 'package:flutter/material.dart';
import 'package:projek_2/screens/courses_screen.dart';

import 'Account_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Creating static data in lists

  //List catNames = [   
    //"Category",
    //'Classes',
    //'Free Course',
    //'BookStore',
    //'Live Course',
    //'LeaderBoard',
  //];

  //List<Color> catColors = [
  //Color(0xFFFFCF2F),
  //Color(0xFF6FE08D),
  //Color(0xFF61BDFD),
  //Color(0xFFFC7F7F),
  //Color(0xFFCB84FB),
  //Color(0xFF78E667),
  //];

//List<Icon> catIcons = [
  //Icon(Icons.category, color: Colors.white, size: 30,),
  //Icon(Icons.food_bank_outlined, color: Colors.white, size: 30,),
  //Icon(Icons.assignment, color: Colors.white, size: 30,),
  //Icon(Icons.store, color: Colors.white, size: 30,),
  //Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
  //Icon(Icons.emoji_events, color: Colors.white, size: 30,),
//];
  List imgList = [
    'Tumis Buncis Daging Cincang',
    'Ayam Krispi',
    'Brokoli Saus Kangpao',
    'Pakcoy Saus Bawang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halo"),
      backgroundColor: Color.fromARGB(255, 5, 60, 105),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Account"),),
            ListTile(
              title: Text("Member"),),
            ListTile(
              title: Text("Pengaturan"),)
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 5, 60, 105),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Icon(
                      //Icons.dashboard,
                      //size: 30,
                      //color: Colors.white,
                    //),
                    //Icon(
                      //Icons.notifications,
                      //size: 30,
                      //color: Colors.white,
                    //),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 5, bottom: 15),
                  child: Text("Hallo, Bunda", style: TextStyle(
                    fontSize: 25, 
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Cari",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              //GridView.builder(
                //itemCount: catNames.length,
                //shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //crossAxisCount: 3, 
                  //childAspectRatio: 1.1,
                //),
                //itemBuilder: (context, index) {
                  //return Column(
                    //children: [
                      //Container(
                        //height: 60,
                        //width: 60,
                        //decoration: BoxDecoration(
                          //color: catColors[index],
                          //shape: BoxShape.circle,
                        //),
                        //child: Center(child: catIcons[index],
                        //),
                      //),
                      //SizedBox(height: 10,),
                      //Text(
                        //catNames[index],
                        //style: TextStyle(
                          //fontSize: 10,
                          //fontWeight: FontWeight.w500,
                          //color: Colors.black.withOpacity(0.6),
                        //),
                      //)
                    //],
                  //);
                //},
              //),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                   ),
                  //Text(
                    //"See All",
                    //style: TextStyle(
                      //fontSize: 18,
                      //fontWeight: FontWeight.w500,
                      //color: Color.fromARGB(255, 5, 60, 105),
                    //),
                  //),
                ],
              ),
              SizedBox(height: 10,),
              GridView.builder(
                itemCount: imgList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ), 
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => 
                              CourseScreen(imgList[index]),
                            ),
                          );
                      },
                      child: Container(
                        padding: 
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "images/${imgList[index]}.png",
                              width: 150,
                              height: 150,
                            ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Beragam Resep Berbeda",  style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5),
                            ),)
                          ],
                        ),
                      )
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //BottomNavigationBarItem(
            //icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), label: 'Account'),
        ],
         onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountPage(),
              ),
            );
          }
        },   
        ),
        
    );
  }
}