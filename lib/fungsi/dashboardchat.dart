import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class DashboardChat extends StatefulWidget {
  @override
  _BodyChatState createState() => _BodyChatState();
}
class _BodyChatState extends State<DashboardChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Message'),
        centerTitle: true,
      ),
    );
  }
   Future getData() async{
    var url = 'https://sweetroommedan.com/app/pesan/get.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    print(data.toString());
  }

  @override
  void initState() {
    getData();
  }

}
