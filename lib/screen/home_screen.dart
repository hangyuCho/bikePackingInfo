import 'package:bike_parking_info/model/model_parking.dart';
import 'package:bike_parking_info/widget/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Parking> parkings = [
    Parking.fromMap({
      'title' : '【予約制：akippa】北斗市追分1丁目3-39駐車場',
      'address' : '北海道北斗市追分1丁目3-39',
      'parkingAreaType' : '時間貸',
      'closeInfo' : 'なし（詳細は備考のURLのリンク先をご確認ください）',
      'serviceTime' : '8:00～18:00',
      'price' : '当日最大350円',
      'parkingQtyPerOnetime' : '1台',
      'parkingInfoDetail' : '排気量による制限はありません。詳細はリンク先をご確認ください。',
      'remark' : '▼ご利用の際は駐車場予約サービス「akippa」のサイトよりご予約ください。https://www.akippa.com/parking/268217bf16184b606e3d2a4fe5901e27?utm_source=jmpsa&utm_medium=referral&utm_campaign=jmpsa',
      'managementCompany' : 'akippa株式会社',
      'updateDate' : DateTime.now()
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(
              parkings: parkings,
            ),
            TopBar(),
          ],
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/header_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'logo',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'hoge1',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'hoge2',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'hoge3',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}