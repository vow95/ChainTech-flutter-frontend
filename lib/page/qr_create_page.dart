import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/material.dart';

class QRCreatePage extends StatefulWidget {
  @override
  _QRCreatePageState createState() => _QRCreatePageState();
}

class _QRCreatePageState extends State<QRCreatePage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
       
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(
                  data: controller.text,
                  size: 200,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 40),
                buildTextField(context),
              ],
            ),
          ),
        ),
      );

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Color(0xFF162A49),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: 'Enter your ProductID',
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Color(0xFFdb3954),
            ),
          ),
          suffixIcon: IconButton(
            color:Color(0xFFdb3954),
            icon: Icon(Icons.done, size: 30),
            onPressed: () => setState(() {}),
          ),
        ),
      );
}
