import 'package:bike_parking_info/model/model_parking.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
            child: Text(
              _currentTitle,
              style: TextStyle(fontSize: 11),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(4),
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Text(
                              '駐車場形態',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      parkingAreaType[_currentPage] == "時間貸"
                      ? IconButton(
                        icon: Icon( Icons.timer ), 
                        
                        onPressed: () {},
                      ) 
                      : IconButton(
                        icon: Icon( Icons.calendar_today), 
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(4),
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.all(3)
                            ),
                            Text(
                              '利用可能時間',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text(
                            serviceTime[_currentPage]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(4),
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Text(
                              '料金（時間貸）',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text(
                            price[_currentPage]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(4),
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Text(
                              '定休日',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            closeInfo[_currentPage]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      FlatButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.all(3)
                            ),
                            Text(
                              '収容台数',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            parkingQtyPerOnetime[_currentPage]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Text(
                              '管理会社',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            managementCompany[_currentPage]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.announcement,
                              color: Colors.black,
                            ),
                            Padding(padding: EdgeInsets.all(3)),
                            Text(
                              '最終更新日',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            DateFormat('yy/MM/dd').format(updateDate[_currentPage]), 
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: makeIndicator(title, _currentPage),
            ),
          ),
        ],
      ),
    );
  }
}

  List<Widget> makeIndicator(List list, int _currentPage) {
    List<Widget> results = [];
    for (var i = 0; i < list.length; i++) {
      results.add(Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 2.0
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == i
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.4)
        )
      ));
    }
    return results;
  }