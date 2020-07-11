import 'package:bike_parking_info/model/model_parking.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  final List<Parking> parkings;
  CarouselImage({this.parkings});
  _CarouselImageState createState() => _CarouselImageState();

}

class _CarouselImageState extends State<CarouselImage> {
  List<Parking> parking;
  List<Widget> images;
  List<String> title;
  List<String> address;
  List<String> parkingAreaType;
  List<String> closeInfo;
  List<String> serviceTime;
  List<String> price;
  List<String> parkingQtyPerOnetime;
  List<String> parkingInfoDetail;
  List<String> remark;
  List<String> managementCompany;
  List<DateTime> updateDate;
  int _currentPage = 0;
  String _currentParking;
  String _currentImages;
  String _currentTitle;
  String _currentAddress;
  String _currentParkingAreaType;
  String _currentCloseInfo;
  String _currentServiceTime;
  String _currentPrice;
  String _currentParkingQtyPerOnetime;
  String _currentParkingInfoDetail;
  String _currentRemark;
  String _currentManagementCompany;
  String _currentUpdateDate;

  @override
  void initState() {
    super.initState();
    parking = widget.parkings;
    images = parking.map((m) => Image.asset('./images/parking_sample.jpg')).toList();
    title = parking.map((m) => m.title).toList();
    address = parking.map((m) => m.address).toList();
    parkingAreaType = parking.map((m) => m.parkingAreaType).toList();
    closeInfo = parking.map((m) => m.closeInfo).toList();
    serviceTime = parking.map((m) => m.serviceTime).toList();
    price = parking.map((m) => m.price).toList();
    parkingQtyPerOnetime = parking.map((m) => m.parkingQtyPerOnetime).toList();
    parkingInfoDetail = parking.map((m) => m.parkingInfoDetail).toList();
    remark = parking.map((m) => m.remark).toList();
    managementCompany = parking.map((m) => m.managementCompany).toList();
    updateDate = parking.map((m) => m.updateDate).toList();

    _currentTitle = title[0];
    _currentAddress = address[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: images, 
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                  _currentTitle = title[_currentPage];
                  _currentAddress = address[_currentPage];
                });
              },
            )
          ),
          Container(
            child: Text(_currentTitle),
          ),
        ],
      ),
    );
  }
}