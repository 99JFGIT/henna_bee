import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../model/booking.dart';

class JobDetails extends StatefulWidget {
  final Booking jobDetails;
  const JobDetails(this.jobDetails,{super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {


  //controller declarations
  var upperHandNumberController = TextEditingController();
  var lowerHandNumberController = TextEditingController();
  var footNumberController = TextEditingController();
  var customerNameController = TextEditingController();
  var customerPhoneController = TextEditingController();
  var customerEmailController = TextEditingController();
  var bookingTitleController = TextEditingController();
  var startDateController = TextEditingController();
  var endDateController = TextEditingController();


  //form key declaration
  final GlobalKey<FormState> bookingFormKey = GlobalKey();


  @override
  Widget build(BuildContext context) {

    //initializing form controllers
    upperHandNumberController.text = widget.jobDetails.upperHandNumber!;
    lowerHandNumberController.text = widget.jobDetails.lowerHandNumber!;
    footNumberController.text = widget.jobDetails.footNumber!;
    customerNameController.text = widget.jobDetails.customerName!;
    customerPhoneController.text = widget.jobDetails.customerPhone!;
    customerEmailController.text = widget.jobDetails.customerEmail!;
    bookingTitleController.text = widget.jobDetails.bookingTitle!;
    startDateController.text = DateFormat('d MMMM , y h:mm a').format(widget.jobDetails.startTime!);
    endDateController.text = DateFormat('d MMMM , y h:mm a').format(widget.jobDetails.endTime!);




    return   Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
        title: const Text(
          "Job Details",
          style: TextStyle(
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
                readOnly: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Upper Hand Number",
                  hintText: "Upper Hand Number",
                  prefixIcon: const Icon(Icons.handshake_outlined),
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
                readOnly: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "lower Hand Number",
                  hintText: "lower Hand Number",
                  prefixIcon: const Icon(Icons.fingerprint),
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
                readOnly: true,
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
                readOnly: true,
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
                readOnly: true,
                controller: customerPhoneController,
                keyboardType: TextInputType.text,
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
                readOnly: true,
                controller: customerEmailController,
                keyboardType: TextInputType.text,
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
                  if (value == null || value.isEmpty) {
                    return "Please enter customer email";
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
                readOnly: true,
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
                // onEditingComplete: () => _focusNodePassword.requestFocus(),
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

              const SizedBox(height: 60),

            ],
          ),
        ),
      ),
    );
  }
}
