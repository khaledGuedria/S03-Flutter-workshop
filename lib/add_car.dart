import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddCar extends StatefulWidget {
//constructor
  AddCar();

  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
//var
  String _make;
  String _model;
  String _description;
  int _quantity;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Car"),
      ),
      body: ListView(
        children: [
          Image.asset("Assets/car-shadow.png"),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Make"),
            onChanged: (String value) {
              _make = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Model"),
                onChanged: (String value) {
              _model = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Description"),
                onChanged: (String value) {
              _description = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            //keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Quantity"),
                onChanged: (String value) {
              _quantity = int.parse(value);
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Add"),
                onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (BuildContext context) {
                       return AlertDialog(
                         title: Text("Car Information"),
                         content: Text("Make : " + _make + 
                         "\n Model : " + _model +
                         "\n Description : " + _description +
                         "\n Quantity : " + _quantity.toString()),
                       );
                    },
                    );
                },
              ),
              RaisedButton(
                child: Text("Cancel"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
