import 'Sub_DataModel.dart';

enum Status { done, wait, onCredit }

class Order {
  int orderNo = -1;
  Subscriber? buyer;
  Status status = Status.wait;

  Order({orderNo, buyer, status}) {
    this.orderNo = orderNo;
    this.buyer = buyer;
    this.status = status;
  }
}
