import 'package:chaintech/timeline_item.dart';
import 'package:flutter/material.dart';
import 'package:chaintech/bubble_timeline.dart';

class timeline extends StatelessWidget {
  final List<TimelineItem> _items = [
    TimelineItem(
      title: 'At Yessayan Jewelry',
      subtitle: 'manufacturer',
      child: Icon(
        Icons.precision_manufacturing,
        color: Colors.white,
      ),
      bubbleColor: Color(0xFF162A49),
    ),
    TimelineItem(
      title: 'SAMSA',
      subtitle: 'distributor',
      child: Icon(
        Icons.local_shipping,
        color: Colors.white,
      ),
      bubbleColor: Color(0xFF162A49),
    ),
    TimelineItem(
      title: 'Wejdan Malwi',
      subtitle: 'Customer',
      child: Icon(
        Icons.verified_user,
        color: Colors.white,
      ),
      bubbleColor: Color(0xFF162A49),
    ),
     TimelineItem(
      title: 'Ahad Mjaddami',
      subtitle: 'Customer',
      child: Icon(
        Icons.verified_user,
        color: Colors.white,
      ),
      bubbleColor: Color(0xFF162A49),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        //title: Text('Bubble Timeline'),
      // ),
      body: Center(
        child: Container(
          child: BubbleTimeline(
            bubbleDiameter: 120,
            items: _items,
            stripColor: Color(0xFFdb3954),
            scaffoldColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
