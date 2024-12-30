//model class for car service booking
class Booking {
  String? bookingId;
  String? customerName;
  String? customerEmail;
  String? customerPhone;
  String? upperHandNumber;
  String? lowerHandNumber;
  String? footNumber;
  String? bookingTitle;
  DateTime? startTime;
  DateTime? endTime;
  String? artistId;
  String? artistName;




  Booking({
    this.bookingId,
    this.customerName,
    this.customerEmail,
    this.customerPhone,
    this.upperHandNumber,
    this.lowerHandNumber,
    this.footNumber,
    this.bookingTitle,
    this.startTime,
    this.endTime,
    this.artistId,
    this.artistName,

  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        bookingId: json["booking_id"],
        customerName: json['customer_name'],
        customerEmail: json["customer_email"],
        customerPhone: json["customer_phone"],
        upperHandNumber: json["upper_hand_number"],
        lowerHandNumber: json["lower_hand_number"],
        footNumber: json["foot_number"],
        bookingTitle: json["booking_title"],
        startTime:  DateTime.parse(json["start_time"]),
        endTime:  DateTime.parse(json["end_time"]),
        artistId: json["user_id"],
        artistName: json["user_name"],

      );
}
