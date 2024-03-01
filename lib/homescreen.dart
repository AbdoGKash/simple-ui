// ignore_for_file: use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, must_be_immutable, prefer_typing_uninitialized_variables, prefer_initializing_formals, avoid_print, unused_local_variable
import 'package:flutter/material.dart';
import 'package:video3/placedetalis.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

var data = PlaceDetails();

class Placedetailspage extends StatelessWidget {
  late double screenwidth;
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width; // مهم
    return Column(
      children: [
        Flexible(child: homescreen1()),
        Flexible(
            child: Column(
          children: [
            homescreen2(),
            homescreen3(),
            homescreen4(),
            buildbutton(),
          ],
        ))
      ],
    );
  }
}

homescreen1() {
  var screenwidth;
  return Container(
    width: screenwidth,
    color: Colors.red,
    child: FittedBox(
      fit: BoxFit.fitWidth,
      child: Image.asset(data.imageurl),
    ),
  );
}

homescreen2() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                data.city,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.star, color: Colors.red),
            Text(data.stars.toString()),
          ],
        ),
      ],
    ),
  );
}

homescreen3() {
  commenbutton(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 20,
        ),
        Text(text, style: const TextStyle(color: Colors.blue, fontSize: 12))
      ],
    );
  }

  buildcallbutton() {
    Widget call = commenbutton(Icons.call, "CAll");
    return InkWell(
      child: call,
      onTap: () {
        _makePhoneCall(data.phonenumber);
      },
    );
  }

  bulidsendbutton() {
    Widget send = commenbutton(Icons.send, "SEND");
    return InkWell(
      child: send,
      onTap: () {
        _sms(data.sms);
      },
    );
  }

  buildsharebutton() {
    Widget share = commenbutton(Icons.share, "SHARE");
    return InkWell(
      child: share,
      onTap: () {
        _share(data.share);
      },
    );
  }

  Widget call = buildcallbutton();
  Widget send = bulidsendbutton();
  Widget share = buildsharebutton();
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          call,
          send,
          share,
        ],
      ),
    ],
  );
}

homescreen4() {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Text(
      data.descrabtion,
      style: const TextStyle(fontSize: 10),
    ),
  );
}

printhello() {
  print('Hello Abdo');
}

printhellooo() {
  print('Hello gamal');
}

buildbutton() {
  return const ElevatedButton(
    onPressed: printhello,
    child: Text('Hello'),
    onLongPress: printhellooo,
  );
}

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
 await launchUrl(launchUri);
}

Future<void> _sms(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'sms',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> _share (String url) async {
  final Uri launchUri = Uri(
    scheme: 'https',
    path: url,
  );
 await launchUrl(launchUri);
}









