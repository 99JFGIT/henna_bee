import 'package:henna_bee/model/booking.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BookingDetails extends StatefulWidget {
  final Booking bookingRecords;
  const BookingDetails(this.bookingRecords,{super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {

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

  //booking form key
  final GlobalKey<FormState> bookingFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    //initializing form fields
    upperHandNumberController.text = widget.bookingRecords.upperHandNumber!;
    lowerHandNumberController.text = widget.bookingRecords.lowerHandNumber!;
    footNumberController.text = widget.bookingRecords.footNumber!;
    customerNameController.text = widget.bookingRecords.customerName!;
    customerPhoneController.text = widget.bookingRecords.customerPhone!;
    customerEmailController.text = widget.bookingRecords.customerEmail!;
    bookingTitleController.text = widget.bookingRecords.bookingTitle!;
    startDateController.text = DateFormat('d MMMM , y h:mm a').format(widget.bookingRecords.startTime!);
    endDateController.text = DateFormat('d MMMM , y h:mm a').format(widget.bookingRecords.endTime!);


    artistController.text = widget.bookingRecords.artistName!;

    return   Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white
        ),
        title: const Text(
          "Booking Details",
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
                readOnly: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Lower Hand Number",
                  hintText: "Lower Hand Number",
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
                    return "Please enter lower hand number";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: footNumberController,
                readOnly: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Foot Number",
                  hintText: "FootNumber",
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
                readOnly: true,
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
                controller: customerEmailController,
                readOnly: true,
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
                controller: bookingTitleController,
                readOnly: true,
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
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Enter end date";
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,

                controller: artistController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Assigned Artist",
                  hintText: "Assigned Artist",
                  prefixIcon: const Icon(Icons.person_search),
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


            ],
          ),
        ),
      ),
    );
  }


}
