import 'dart:convert';
import 'dart:developer';

import 'package:henna_bee/admin/admin_homepage.dart';
import 'package:henna_bee/model/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:http/http.dart' as http;

import '../api/api_connection.dart';
import '../widgets/progress_dialog.dart';

class AddBooking extends StatefulWidget {
  const AddBooking({super.key});

  @override
  State<AddBooking> createState() => _AddBookingState();
}

class _AddBookingState extends State<AddBooking> {

  List<MyUser> userList = [];
  String selectedArtistId = "";

  //controller declarations
  var upperHandNumberController = TextEditingController();
  var lowerHandNumberController = TextEditingController();
  var footNumberController = TextEditingController();
  var timeController = TextEditingController();

  var customerNameController = TextEditingController();
  var customerPhoneController = TextEditingController();
  var customerEmailController = TextEditingController();

  var bookingTitleController = TextEditingController();
  var startDateController = TextEditingController();
  var endDateController = TextEditingController();
  var artistController = TextEditingController();



  final GlobalKey<FormState> bookingFormKey = GlobalKey();


  Future<List<MyUser>> getArtistList() async {
    bool isConnected = await InternetConnectionChecker().hasConnection;

    if (isConnected) {
      try {
        var res = await http.get(Uri.parse(API.artistList));

        if (res.statusCode == 200) {
          var responseBodyOfSearchItems = jsonDecode(res.body);

          log(responseBodyOfSearchItems.toString());

          if (responseBodyOfSearchItems['success'] == true) {
            for (var eachItemData in (responseBodyOfSearchItems['userData'] as List)) {
              userList.add(MyUser.fromJson(eachItemData));
            }
          }
        } else {
          Fluttertoast.showToast(msg: "error");
        }
      } catch (errorMsg) {
        Fluttertoast.showToast(msg: errorMsg.toString());
      }
    } else {
      Fluttertoast.showToast(msg: "No network connection");
    }

    return userList;
  }


  //function for save booking
  saveBooking() async {
    bool isConnected = await InternetConnectionChecker().hasConnection;

    if (isConnected) {
      if (mounted) {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext c) {
              return const ProgressDialog();
            });
      }

      try {
        var res = await http.post(
          Uri.parse(API.saveServiceBooking),
          body: {
            "upper_hand_number": upperHandNumberController.text.trim(),
            "lower_hand_number": lowerHandNumberController.text.trim(),
            "foot_number": footNumberController.text.trim(),

            "customer_name": customerNameController.text.trim(),
            "customer_phone": customerPhoneController.text.trim(),
            "customer_email": customerEmailController.text.trim(),

            "booking_title": bookingTitleController.text.trim(),
            "start_time": startDateController.text.trim(),
            "end_time": endDateController.text.trim(),
            "artist_id": selectedArtistId,

          },
        );

        if (res.statusCode == 200) {
          var responseData = jsonDecode(res.body);
          if (responseData['success'] == true) {
            Get.off(() => const AdminHomepage());
            Fluttertoast.showToast(msg: "Booking added successfully");
          } else {
            Fluttertoast.showToast(msg: "Error");

            if (mounted) {
              Navigator.pop(context);
            }
          }
        }
      } catch (e) {
        log(e.toString());
      }
    } else {
      Fluttertoast.showToast(msg: "No network connection");
    }
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   getArtistList();

  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(

          "Add Booking",
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green.shade200,

        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: bookingFormKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [

              Image.asset("assets/images/hand2.png",height: 80,width: 100,fit: BoxFit.contain,),
              Text(
                "Booking Details",
                style: GoogleFonts.acme(
                  fontSize: 20,

                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: upperHandNumberController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Upper Hand Number",
                  hintText: "Upper Hand Number",
                  prefixIcon: const Icon(Icons.handshake),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter upper hand number";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: lowerHandNumberController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "lower Hand Number",
                  hintText: "lower Hand Number",
                  prefixIcon: const Icon(Icons.flare_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter lower hand number";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: footNumberController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Foot Number",
                  hintText: "Foot Number",
                  prefixIcon: const Icon(Icons.snowshoeing_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter foot number";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 20),
              Image.asset("assets/images/customer.png",height: 80,width: 100,fit: BoxFit.contain,),
              Text(
                "Customer Details",
                style:
                GoogleFonts.acme(
                  fontSize: 20,

                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: customerNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Customer Name",
                  hintText: "Customer Name",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter customer name";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: customerPhoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Customer Phone",
                  hintText: "Customer Phone",
                  prefixIcon: const Icon(Icons.call),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter customer phone number";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: customerEmailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Customer Email",
                  hintText: "Customer Email",
                  prefixIcon: const Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty || !value.contains('@') ||!value.contains('.')) {
                    return "Please enter customer valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              Image.asset("assets/images/booking.png",height: 80,width: 100,fit: BoxFit.contain,),
              Text(
                "Booking Details",
                style:
                GoogleFonts.acme(
                  fontSize: 20,

                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: bookingTitleController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Booking Title",
                  hintText: "Booking Title",
                  prefixIcon: const Icon(Icons.book),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter booking title";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),

              TextFormField(
                readOnly: true,
                onTap: () async {


                  DateTime? dateTime = await showOmniDateTimePicker(context: context);
                  if (dateTime!= null) {
                    startDateController.text =
                        DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
                  }

                },

                controller: startDateController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: "Start Date",
                  hintText: "Start Date",

                  prefixIcon: const Icon(Icons.date_range),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Enter start date";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 10),

              TextFormField(
                readOnly: true,
                onTap: () async {


                  DateTime? dateTime = await showOmniDateTimePicker(context: context);
                  if (dateTime!= null) {
                    endDateController.text =
                        DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
                  }

                },

                controller: endDateController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                  labelText: "End Date",
                  hintText: "End Date",

                  prefixIcon: const Icon(Icons.date_range),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // onEditingComplete: () => _focusNodePassword.requestFocus(),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Enter end date";
                  }

                  return null;
                },
              ),


              SizedBox(height: 10,),


              TextFormField(
                readOnly: true,

                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Center(child: Text("Select Artist")),
                        surfaceTintColor: Colors.white,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (ctx, index) {
                                return SimpleDialogOption(
                                  onPressed: () {
                                    String name = userList[index]
                                        .userName
                                        .toString();
                                    selectedArtistId = userList[index]
                                        .userId
                                        .toString();
                                    artistController.text = name;
                                    Navigator.pop(context);
                                  },
                                  child: Card(
                                    elevation: 2,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          userList[index]
                                              .userName
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                );
                              },
                              itemCount: userList.length,
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                controller: artistController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Select Artist",
                  hintText: "Select Artist",
                  prefixIcon: const Icon(Icons.person_search),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Select Artist";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 60),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(

                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.green.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),

                    onPressed: () {
                      if(bookingFormKey.currentState!.validate())
                      {
                        bookingFormKey.currentState!.save();

                        saveBooking();
                      }

                    },
                    child:  Text(
                      "Save Booking",
                      style: const TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold),

                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}
