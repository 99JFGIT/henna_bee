import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerContactusPage extends StatelessWidget {
  const CustomerContactusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        iconTheme: const IconThemeData(color: Colors.white
        ),
        title: Text("Contact Us",style: GoogleFonts.acme(
            color: Colors.white
        ),),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            const Text(
              "Henna Bee are here to ensure your henna experience is nothing short of magical. Whether you have questions, need assistance, or want to share your feedback, we’re just a message or call away.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              "How to Reach Us",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
                  "📞 Phone  : +8801813456765 (Available 9 AM - 7 PM)\n"
                  "📧 Email  : support@hennabee.com\n"
                  "🌐 Website: www.hennabee.com\n"
                  "📍 Address: Henna Bee HQ, Bohoddarhut, Chittagong, Bangladesh.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              "Get in Touch",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "- Feedback & Suggestions: We value your thoughts! Share your ideas or experiences to help us improve.\n"
                  "- Support: Need help with booking, designs, or artist profiles? Our friendly team is ready to assist.\n"
                  "- Collaborations: Artists, let’s join hands! Reach out to be part of the Henna Bee family.",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              "Social Media",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.camera_alt_outlined, color: Colors.pink), // Instagram Icon
                const SizedBox(width: 8.0),
                const Text(
                  "@HennaBeeOfficial",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.facebook, color: Colors.blue), // Facebook Icon
                const SizedBox(width: 8.0),
                const Text(
                  "Henna Bee",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.alternate_email, color: Colors.lightBlue), // Twitter Icon
                const SizedBox(width: 8.0),
                const Text(
                  "@HennaBeeApp",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              "We’re here to make every moment adorned with Henna Bee truly special. Don’t hesitate to reach out – we’d love to hear from you!\n\nLet’s stay beautiful, together.",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
