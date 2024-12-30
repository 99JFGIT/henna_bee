
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class DifferentDesign extends StatelessWidget {
  const DifferentDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green[300]!,
        title: Text(
          "Different Design",
          style: GoogleFonts.abel(color: Colors.white),),
      ),

      body: GridView.count(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 1");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/7.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Jf",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 2");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/2.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Umme Habiba",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 3");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/3.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Shumi Rahman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 4");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/4.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Manha Binte Sekander",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 5");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/5.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Rokeya Ahmed",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 6");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/6.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Jf",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 7");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/7.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Sanjida Rahman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 8");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/8.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Manha Binte Sekander",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 9");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/9.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Samina",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 10");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/10.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Jf",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 11");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/simple_design/11.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Umme Habiba",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "Different Design 12");
            },
            child: Card(
              elevation: 20,
              color: Colors.grey,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/different_design/12.jpg",width: 300,height: 270),
                    Text(
                      "Artist : Shumi Rahman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),

    );
  }
}