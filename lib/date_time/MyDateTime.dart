import 'package:flutter/material.dart';

class MyDateTime extends StatefulWidget {
  @override
  _MyDateTimeState createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  DateTime _dateTime;

  getDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year),
      firstDate: DateTime(DateTime.now().year - 20),
      lastDate: DateTime(DateTime.now().year + 20),
    );

    setState(() {
      _dateTime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _dateTime == null
                    ? "Choose Date"
                    : 'Day : ${_dateTime.day}, Month : ${_dateTime.month} , Year : ${_dateTime.year}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.black,
                onPressed: () {
                  getDate();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get Date',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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
