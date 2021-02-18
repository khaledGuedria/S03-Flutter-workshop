import 'package:flutter/material.dart';


class ListCar extends StatelessWidget {

  //var
  List<CarView> cars = [
          //1
          CarView("Assets/bmw-serie3.jpg", "BMW", "Serie 3"),
          //2
          CarView("Assets/chery-tiggo7.jpg", "Cherry", "Tiggo 7"),
          //3
          CarView("Assets/kia-sportage.jpg", "KIA", "Sportage"),
          //4
          CarView("Assets/peugeot-208.jpg", "Peugeot", "208"),
          //1
          CarView("Assets/bmw-serie3.jpg", "BMW", "Serie 3"),
          //2
          CarView("Assets/chery-tiggo7.jpg", "Cherry", "Tiggo 7"),
          //3
          CarView("Assets/kia-sportage.jpg", "KIA", "Sportage"),
          //4
          CarView("Assets/peugeot-208.jpg", "Peugeot", "208"),
          //1
          CarView("Assets/bmw-serie3.jpg", "BMW", "Serie 3"),
          //2
          CarView("Assets/chery-tiggo7.jpg", "Cherry", "Tiggo 7"),
          //3
          CarView("Assets/kia-sportage.jpg", "KIA", "Sportage"),
          //4
          CarView("Assets/peugeot-208.jpg", "Peugeot", "208"),
      ];




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Car Agency"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return cars[index];
        },
        itemCount: cars.length,
        ),
      );
  }

}

class CarView extends StatelessWidget {
  //var
  String _make;
  String _model;
  String _image;


  //constructor
  CarView(this._image, this._make, this._model);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Row(
        children: [
          Image.asset(this._image, width: 150,),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Column(
              children: [
                  Text(this._make),
                  Text(this._model),
            ],),
          )
      ],),
      );
  }

}