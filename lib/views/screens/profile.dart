import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "My address",
      "My orders",
      "My returns",
      "Payment",
      "Passwords",
      "Language",
      "Currency"
    ];

    var arrNames1 = [
      "123 RoyalStreet,Sydney",
      "2 Orders",
      "1 Return",
      " ",
      " ",
      "English",
      "AUD",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Profiles"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Kelly Portman",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "kellyPortman@gmail.com",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              // Remove the Expanded widget
              child: ListView.separated(
                shrinkWrap: true, // Added shrinkWrap to ListView
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      arrNames[index],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    trailing: Text(
                      arrNames1[index],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  );
                },
                itemCount: arrNames.length,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
