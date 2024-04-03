import 'package:flutter/material.dart';

class Charged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 50, right: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Searching  similar results.....",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/images/chargg.gif",
                  fit: BoxFit.cover,
                ),
              )
            ],
          )),
    );
  }
}
