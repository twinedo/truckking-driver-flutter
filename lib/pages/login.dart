import 'package:flutter/material.dart';
import 'package:truckking_driver/styles/fontStyles.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    var heightQuery = MediaQuery.of(context).size.height;
    var widthQuery = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/loginBackground.png'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: widthQuery * 0.8,
              height: heightQuery * 0.7,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFf3f3f3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Halo 🇮🇩, Selamat Datang',
                    style: primaryTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/logonew.png',
                        width: 150,
                        height: 100,
                      ),
                      Text(
                        'Make Logistics Manageable',
                        style: primaryPlaintextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            isDense: true,
                            hintText: 'Alamat Email Anda'),
                        obscureText: showPassword,
                      ),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              icon: Icon(showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: Colors.grey,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            hintText: 'Kata sandi'),
                        obscureText: showPassword,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Lupa kata Sandi?',
                            style: primaryTextStyle.copyWith(
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ]),
                    width: widthQuery,
                    height: 40,
                    child: Center(
                        child: Text(
                      'Masuk',
                      style: whitTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
