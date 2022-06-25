import 'Order_DataModel.dart';

class Subscriber {
  int subNo = -1;
  String name = "NoName";
  String phone = "000000000000";
  String address = "No adress info";
  List<Order>? previousOrders;
  String spacialNote = "";

  Subscriber({subNo, name, phone, address, status, spacialNote}) {
    this.subNo = subNo;
    this.name = name;
    this.phone = phone;
    this.address = address;
    this.spacialNote = spacialNote;
  }
}
