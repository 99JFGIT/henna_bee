import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:henna_bee/more_design_screen/simple_design.dart';

import 'client/customer_home_page1.dart';

class DesignDetails extends StatefulWidget {
  final String name;
  final String image;
  final String description;

  const DesignDetails({super.key,required this.name,required this.image,required this.description});

  @override
  State<DesignDetails> createState() => _DesignDetailsState();
}

class _DesignDetailsState extends State<DesignDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green[200]!,
        title: Text(
          "Design Details",
          style: GoogleFonts.abel(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                    "assets/images/${widget.image}",
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 3,
                    fit: BoxFit.fill,
                ),
              ],
            ),

            Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.green.shade200,
                  child: Center(


                    child: Text(
                      widget.name,textAlign: TextAlign.center,

                      style: GoogleFonts.abel(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Flexible(
                    child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          widget.description,
                          style: GoogleFonts.abel(fontSize: 16),
                        ),
                    ))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
