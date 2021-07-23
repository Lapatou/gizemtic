enum Status{
  done,
  wait,
  onCredit
}
class Siparis{

  int No=-1;
  String Name="NoName";
  String Phone = "000000000000";
  String Adress="No adress info";
  Status status= Status.wait;

  Siparis({no,name,phone,adress,status}){
    this.No = no;
    this.Name = name;
    this.Phone = phone;
    this.Adress = adress;
    this.status = status;
  }


}