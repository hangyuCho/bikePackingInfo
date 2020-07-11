class Parking {
  final String title;
  final String address;
  final String parkingAreaType;
  final String closeInfo;
  final String serviceTime;
  final String price;
  final String parkingQtyPerOnetime;
  final String parkingInfoDetail;
  final String remark;
  final String managementCompany;
  final DateTime updateDate;

  Parking.fromMap(Map<String, dynamic> map)
  : title = map['title'],
    address = map['address'],
    parkingAreaType = map['parkingAreaType'],
    closeInfo = map['closeInfo'],
    serviceTime = map['serviceTime'],
    price = map['price'],
    parkingQtyPerOnetime = map['parkingQtyPerOnetime'],
    parkingInfoDetail = map['parkingInfoDetail'],
    remark = map['remark'],
    managementCompany = map['managementCompany'],
    updateDate = map['updateDate'];

    @override
    String toString() => "Parking<$title:$address>";
}
/*
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
'updateDate' : DateTime.now(),

 */