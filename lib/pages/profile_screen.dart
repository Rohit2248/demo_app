import 'dart:io';

import 'package:face_net_authentication/pages/widgets/app_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page_screen.dart';


class ProfileScreen extends StatelessWidget {
  final String username;
  final String about;
  final String imagePath;
  const ProfileScreen(
    this.about,
    this.username, {
    Key key,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(imagePath)),
                      ),
                    ),
                    margin: EdgeInsets.all(20),
                    width: 50,
                    height: 50,
                    
                  ),
                  Text(
                    'Hi ' + username + '!',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFEFFC1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'About:' + about ,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    Divider(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Spacer(),
              AppButtonWidget(
                text: "LOG OUT",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageScreen()),
                  );
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                color: Color(0xFFFF6161),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
