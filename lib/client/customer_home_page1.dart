import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:henna_bee/design_details.dart';
import 'package:henna_bee/more_design_screen/arabic_design.dart';
import 'package:henna_bee/more_design_screen/different_design.dart';
import 'package:henna_bee/more_design_screen/gorgeous_design.dart';
import 'package:henna_bee/more_design_screen/heavy_design.dart';
import 'package:henna_bee/more_design_screen/integrate_design.dart';
import 'package:henna_bee/more_design_screen/mandala_work.dart';
import 'package:henna_bee/more_design_screen/royal_design.dart';
import 'package:henna_bee/more_design_screen/semi_bridal_design.dart';
import '../constant.dart';
import '../more_design_screen/simple_design.dart';


class CustomerHomePage1 extends StatelessWidget {
  const CustomerHomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        iconTheme: const IconThemeData(color: Colors.white
        ),
        title: Text("Home",style: GoogleFonts.acme(
          color: Colors.white
        ),),

        centerTitle: true,

      ),

      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design1Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design1Name, image: image1, description: description1)));

               },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/hand3.png",width: 60,height: 50),
                        SizedBox(height: 4,),
                        Text(
                            design1Name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                                
                            ),
                         ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(5, 20),   // Button height
                            backgroundColor: Colors.grey,  // Button background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),  // Rounded corners
                            ),
                          ),
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Semi Bridal Design");
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SemiBridalDesign()));
                          },
                          child: Text(
                            "More",
                            style: TextStyle(
                              fontSize: 7,  // Button text size
                              fontWeight: FontWeight.bold,  // Button text weight
                              color: Colors.white,  // Text color
                            ),
                          ),
                        )
                       ],
                     ),
                   ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design2Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design2Name, image: image2, description: description2)));
              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design2Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Gorgeous Design");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => GorgeousDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design3Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design3Name, image: image3, description: description3)));

              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design3Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Royal Designs");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RoyalDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design4Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design4Name, image: image4, description: description4)));

              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design4Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Arabic Designs");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ArabicDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design5Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design5Name, image: image5, description: description5)));

              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design5Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Mandala Work");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MandalaWork()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design6Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design6Name, image: image6, description: description6)));
              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design6Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Integrate Designs");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => IntegrateDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design7Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design7Name, image: image7, description: description7)));

              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design7Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Different Designs");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DifferentDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design8Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design8Name, image: image8, description: description8)));

              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design8Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Heavy Designs");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HeavyDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(msg: design9Name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignDetails(name: design9Name, image: image9, description: description9)));
              },
              child:Card (
                elevation: 20,
                color: Colors.grey,
                margin: EdgeInsets.all(20),
                child:  Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10,),
                      Image.asset("assets/images/hand3.png",width: 60,height: 50),
                      SizedBox(height: 4,),
                      Text(
                        design9Name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(5, 20),   // Button height
                          backgroundColor: Colors.grey,  // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),  // Rounded corners
                          ),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Simple Designs");
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleDesign()));
                        },
                        child: Text(
                          "More",
                          style: TextStyle(
                            fontSize: 7,  // Button text size
                            fontWeight: FontWeight.bold,  // Button text weight
                            color: Colors.white,  // Text color
                          ),
                        ),
                      )

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

