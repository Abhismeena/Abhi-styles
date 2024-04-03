import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/login/loginScreen.dart';
import 'package:fashion/views/otp/OtpVerification.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final formKey = GlobalKey<FormState>();
  final firstNameText = TextEditingController();
  final lastNameText = TextEditingController();
  final emailText = TextEditingController();
  var passText = TextEditingController();
  var addressText = TextEditingController();
  String state = 'State';
  String country = 'Country';
  List<String> stateList = <String>[
    'State',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
    ''
  ];

  List<String> countryList = <String>['Country', 'India'];

  Widget statecustomdropdown(String input, List<String> list) {
    return DropdownButtonFormField<String>(
      onChanged: (String? newValue) {
        setState(() {
          state = newValue!;
          country = 'India';
        });
      },
      decoration: InputDecoration(
          labelText: 'State',
          labelStyle: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
          hintText: 'State'),
      isExpanded: true,
      menuMaxHeight: 350,
      value: input,
      items: list.map<DropdownMenuItem<String>>(
        (value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text('$value',
                style:
                    TextStyle(color: const Color.fromARGB(255, 126, 123, 123))),
          );
        },
      ).toList(),
    );
  }

  Widget countrydropdown(String input, List<String> list) {
    return DropdownButtonFormField<String>(
      onChanged: (String? newValue) {
        setState(() {
          country = newValue!;
        });
      },
      decoration: InputDecoration(
          labelText: 'Country',
          labelStyle: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
          hintText: 'Country'),
      isExpanded: true,
      menuMaxHeight: 350,
      value: input,
      items: list.map<DropdownMenuItem<String>>(
        (value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style:
                    TextStyle(color: const Color.fromARGB(255, 126, 123, 123))),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close_sharp),
            ),
          ),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "New Customer",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: firstNameText,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      validator: (value) {
                        String pattern = r'^[a-zA-Z\s]*$';
                        RegExp regExp = RegExp(pattern);
                        if (value!.isEmpty) {
                          return 'Name is required';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Please enter valid name';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: lastNameText,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      validator: (value) {
                        String pattern = r'^[a-zA-Z\s]*$';
                        RegExp regExp = RegExp(pattern);
                        if (value!.isEmpty) {
                          return 'Name is required';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Please enter valid name';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(height: 7),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailText,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      validator: (value) {
                        String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                        RegExp regExp = RegExp(pattern);
                        if (value!.isEmpty) {
                          return 'Email is required';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Please enter valid email address';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passText,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      controller: addressText,
                      decoration: InputDecoration(
                        hintText: 'Address',
                        labelText: 'Address',
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Address is required';
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: screenWidth * .40,
                            child: statecustomdropdown(state, stateList)),
                        Container(
                          width: screenWidth * .40,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Postcode',
                              labelText: 'Postcode',
                              labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Postcode is required';
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    countrydropdown(country, countryList),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 25),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: RoundedButton(
                    btnName: 'Create account',
                    callback: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpVerification(
                                    emailText.text.toString())));
                      }
                    },
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Terms of Use and Privacy Policy',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    )),
              )
            ]),
          ),
        ));
  }
}
