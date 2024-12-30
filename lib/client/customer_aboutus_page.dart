
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerAboutusPage extends StatelessWidget {
  const CustomerAboutusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        iconTheme: const IconThemeData(color: Colors.white
        ),
        title: Text("About Us",style: GoogleFonts.acme(
            color: Colors.white
        ),),

        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Welcome to the Henna Bee, your one-stop destination for exquisite henna designs and personalized experiences. We are passionate about bringing the ancient art of henna to life with a modern twist, offering a blend of tradition and contemporary styles to make your special moments even more memorable.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Who We Are",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "At Henna Bee, we connect talented henna artists with clients who are looking for stunning, intricate designs for various occasions. Whether it's a wedding, festival, baby shower, or just a day to pamper yourself, we provide a platform to explore diverse henna patterns crafted with precision and love.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "What We Offer",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "- Diverse Designs: From traditional bridal henna to trendy Arabic, simple, or modern patterns, find designs that resonate with your style.\n"
                    "- Expert Artists: Book experienced and skilled henna artists who are passionate about their craft and ensure your satisfaction.\n"
                    "- Convenient Booking: Easily browse, select, and book your favorite artist or design from the comfort of your home.\n"
                    "- Custom Options: Discuss your preferences and create custom designs tailored just for you.\n"
                    "- Seamless Experience: Our user-friendly app ensures a smooth journey from design exploration to booking and final application.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Our Vision",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "We aim to celebrate the timeless beauty of henna art and make it accessible to everyone. Our vision is to create a community where artists and clients come together to share, inspire, and enjoy the elegance of henna.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Why Choose Us?",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "- Trusted and verified henna artists.\n"
                    "- High-quality, skin-friendly henna products.\n"
                    "- Transparent pricing and secure transactions.\n"
                    "- Personalized services for all occasions.\n"
                    "- Dedicated customer support for a hassle-free experience.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Let us be a part of your journey in creating beautiful, lasting memories with the art of henna. Download the Henna Applyer App today and bring your design dreams to life!",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}