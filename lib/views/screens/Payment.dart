import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/screens/Order.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/debitCard.jpg',
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "+ Add new credit card",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20), child: Divider()),
            Text("or checked with"),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 2,
                  )),
                  height: 40,
                  width: 130,
                  child: Image.asset("assets/images/PayPal.png"),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      )),
                  height: 40,
                  width: 130,
                  child: Image.asset("assets/images/applee.png"),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Container(
                height: 40,
                width: double.infinity,
                child: RoundedButton(
                  btnName: "Pay \$102.40",
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Order()),
                    );
                  },
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ));
  }
}
