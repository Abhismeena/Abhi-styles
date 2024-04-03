import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrSearchCategory = [
      "Winter Long Shirt",
      "Cotton Shorts",
      "Long Sleeve Top",
    ];
    return Scaffold(
      appBar: AppBar(
        // titleSpacing: 20,
        title: Text("Search", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25,
                  ),
                  hintText: 'Try  Jacket',
                  hintStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  filled: false,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: Colors.grey,
                    ),
                    title: Text(
                      arrSearchCategory[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
                itemCount: arrSearchCategory.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 20,
                    thickness: 2,
                  );
                },
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
