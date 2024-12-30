
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class MandalaWork extends StatelessWidget {
  const MandalaWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green[300]!,
        title: Text(
          "Mandala Work",
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
              Fluttertoast.showToast(msg: "Mandala Work 1");
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
                    Image.asset("assets/images/5.jpg",width: 300,height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 2");
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
                    Image.asset("assets/images/mandala_work/2.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 3");
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
                    Image.asset("assets/images/mandala_work/3.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 4");
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
                    Image.asset("assets/images/mandala_work/4.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 5");
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
                    Image.asset("assets/images/mandala_work/5.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 6");
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
                    Image.asset("assets/images/mandala_work/6.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 7");
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
                    Image.asset("assets/images/mandala_work/7.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 8");
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
                    Image.asset("assets/images/mandala_work/2.jpg", width: 300, height: 270),
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
              Fluttertoast.showToast(msg: "Mandala Work 9");
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
                    Image.asset("assets/images/mandala_work/3.jpg", width: 300, height: 270),
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



        ],
      ),

    );
  }
}