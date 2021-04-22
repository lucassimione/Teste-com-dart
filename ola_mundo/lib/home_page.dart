import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int cont = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'App Flutter ADS'),
            actions: [CustomSwitch()],
            ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            //scrollDirection: Axis.horizontal,
            children: [
              Center(child: CustomSwitch()),
                Container(
                      width:50, height: 50,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width:50, height: 50,
                      color: Colors.green
                    ),
                    Container(
                      width:50, height: 50,
                      color: Colors.black
                    ),
                    Container(
                      width:50, height: 50,
                      color: Colors.blue
                    )
                  ]
                )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_circle),
          onPressed:() {
            setState(() {
              cont++;
              // print(cont);
            });
          },
        )
        );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
            value: AppController.instance.isDark,
            onChanged: (value) {
              AppController.instance.changeTheme();  
            });
  }
}