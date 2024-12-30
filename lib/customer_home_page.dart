import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:henna_bee/authentication/login_screen.dart';
import 'package:henna_bee/client/customer_aboutus_page.dart';
import 'package:henna_bee/client/customer_contactus_page.dart';
import 'package:henna_bee/client/customer_home_page1.dart';

class CustomerHomePage extends StatefulWidget {
  const CustomerHomePage({super.key});

  @override
  State<CustomerHomePage> createState() => _CustomerHomePageState();


}

class _CustomerHomePageState extends State<CustomerHomePage> {

  //logout dialog
  void showLogoutDialog() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.question,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: 'Logout',
      desc: 'Want to logout from app ?',
      buttonsTextStyle:
      const TextStyle(color: Colors.white),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkText: 'YES',
      btnCancelText: 'NO',
      btnOkOnPress: () {

        Get.offAll(() => const LoginScreen());
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          actions: [
            IconButton(
              tooltip: "Logout",
              color: Colors.white,
              onPressed: (){
                showLogoutDialog();
              },
              icon: const Icon(Icons.logout),
            ),



          ],
          backgroundColor: Colors.green.shade100,
          title: const Text(
            'Henna Bee',
            style: TextStyle(color: Colors.green),

          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  text: "Home Page"),
              Tab(
                  icon: Icon(
                    Icons.account_box_outlined,
                    color: Colors.white,
                  ),
                  text: "About Us"),
              Tab(
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  text: "Contact")
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CustomerHomePage1(),
            CustomerAboutusPage(),
            CustomerContactusPage(),
          ],
        ),
      ),
    );
  }
}