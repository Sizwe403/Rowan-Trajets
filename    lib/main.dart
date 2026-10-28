import 'package:flutter/material.dart';
void main() => runApp(RowanApp());
class RowanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rowan Trajets',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF0F1535)),
      home: DriverV2Screen(),
    );
  }
}
class DriverV2Screen extends StatelessWidget {
  final ride = {
    'price': '95',
    'pickup': '38 Smith St, Durban',
    'drop': 'Gateway Theatre, Umhlanga',
    'client': 'Thandi',
    'rating': '4.9',
    'rides': '127',
    'payment': 'Cash on Destination',
    'notes': 'Gate 2, blue house, call when outside',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF0F1535), title: Text('Rowan Trajets', style: TextStyle(color: Color(0xFFD89B6A)))),
      body: Column(children: [
        Container(height: 150, color: Color(0xFF1A2347), child: Center(child: Text('MAP: PICKUP -> DROP via M41\n8.5km - 18 min', style: TextStyle(color: Colors.white70), textAlign: TextAlign.center))),
        Expanded(child: ListView(padding: EdgeInsets.all(16), children: [
          Container(padding: EdgeInsets.all(16), decoration: BoxDecoration(color: Color(0xFF1A2347), borderRadius: BorderRadius.circular(16), border: Border.all(color: Color(0xFFD89B6A).withOpacity(0.3))), child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('R${ride['price']}', style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold, color: Color(0xFFD89B6A))), Text('Est. earnings', style: TextStyle(color: Colors.white70))]),
              Container(padding: EdgeInsets.all(8), decoration: BoxDecoration(border: Border.all(color: Color(0xFFD89B6A)), borderRadius: BorderRadius.circular(20)), child: Text('ETA 18 min', style: TextStyle(color: Color(0xFFD89B6A)))),
            ]),
            SizedBox(height: 12),
            Row(children: [Icon(Icons.timer, color: Color(0xFFD89B6A), size: 18), Text(' 4 min pickup • 1.2 km   ', style: TextStyle(color: Colors.white, fontSize: 12)), Icon(Icons.route, color: Color(0xFFD89B6A), size: 18), Text(' 8.5 km trip', style: TextStyle(color: Colors.white, fontSize: 12))]),
          ])),
          SizedBox(height: 14),
          Container(padding: EdgeInsets.all(16), decoration: BoxDecoration(color: Color(0xFF1A2347), borderRadius: BorderRadius.circular(16)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [CircleAvatar(radius: 26, child: Text('T')), SizedBox(width: 12), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Client: ${ride['client']}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Row(children: [Icon(Icons.star, color: Colors.amber, size: 14), Text(' ${ride['rating']} • ${ride['rides']} rides', style: TextStyle(color: Colors.white70, fontSize: 12))]), SizedBox(height: 6), Row(children: [Container(padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3), decoration: BoxDecoration(color: Colors.green.withOpacity(0.2), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.green)), child: Text('ID Verified ✅', style: TextStyle(color: Colors.green, fontSize: 10))), SizedBox(width: 6), Container(padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3), decoration: BoxDecoration(color: Colors.green.withOpacity(0.2), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.green)), child: Text('Face Verified ✅', style: TextStyle(color: Colors.green, fontSize: 10)))])])]),
            SizedBox(height: 14),
            Text('Payment:', style: TextStyle(color: Colors.white54, fontSize: 12)),
            Container(width: double.infinity, margin: EdgeInsets.only(top: 6), padding: EdgeInsets.all(10), decoration: BoxDecoration(border: Border.all(color: Colors.white24), borderRadius: BorderRadius.circular(8)), child: Text(ride['payment']!, style: TextStyle(color: Colors.white))),
            SizedBox(height: 10),
            Text('Notes:', style: TextStyle(color: Colors.white54, fontSize: 12)),
            Container(width: double.infinity, margin: EdgeInsets.only(top: 6), padding: EdgeInsets.all(10), decoration: BoxDecoration(border: Border.all(color: Color(0xFFD89B6A)), borderRadius: BorderRadius.circular(8)), child: Text(ride['notes']!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Text('Pickup • ${ride['pickup']}', style: TextStyle(color: Colors.white, fontSize: 12)),
            Text('Drop • ${ride['drop']}', style: TextStyle(color: Colors.white, fontSize: 12)),
          ])),
          SizedBox(height: 18),
          Row(children: [Expanded(child: OutlinedButton(onPressed: (){}, child: Text('Decline', style: TextStyle(color: Color(0xFFD89B6A))), style: OutlinedButton.styleFrom(side: BorderSide(color: Color(0xFFD89B6A)), minimumSize: Size(0,50)))), SizedBox(width: 12), Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Accept Ride', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFD89B6A), minimumSize: Size(0,50))))])
        ])),
      ]),
    );
  }
}