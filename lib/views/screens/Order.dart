import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close_rounded,
                  size: 30,
                )),
          ),
        ],
      ),
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/arrowimages.jpg',
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Order Success!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 50),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "your order has been placed succesfully more details check your account ",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: 'Continue shopping',
                    callback: () {},
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
