import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bahan_section.dart';
import '../widgets/langkah_section.dart';

class CourseScreen extends StatefulWidget{
  String img;
  CourseScreen(this.img);
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

  bool  isBahanSection = true;
  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
            color: Colors.black,
              ),
            )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                  ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                     color: Color(0xFFF674AEF),
                     size: 35,),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "${widget.img} Resep Simple",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "Dibuat oleh Merthisia",
              style: TextStyle(

                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "4 porsi",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // if isBahanSection is true than other color and else another color
                    color: isBahanSection 
                    ? Color(0xFF674AEF) 
                    : Color(0xFF674AEF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isBahanSection = true;
                        });
                      },
                      child: Container(
                        padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Bahan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isBahanSection 
                    ? Color(0xFF674AEF).withOpacity(0.6) 
                    : Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isBahanSection = false;
                        });
                      },
                      child: Container(
                        padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Langkah",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),


            SizedBox(height: 10,),
            isBahanSection ?  BahanSection() : LangkahSection(),
          ],
        ),
        ),
    );
  }
}