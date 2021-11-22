import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lumi_smarthome/view_drop_down.dart';

import 'bottom_nav.dart';
import 'features.dart';

class BodyApp extends StatefulWidget{
  @override
  _BodyApp createState() => _BodyApp();

}

class _BodyApp extends State<BodyApp>{
  double value = 50;
  late bool expanded = false;

  void _toggleMode() {
    setState(() {
      expanded = !expanded;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: ListView(
        children:  [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PhysicalModel(
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(360),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(onTap: _toggleMode, child: expanded ? Icon(Icons.keyboard_arrow_up) : Icon(Icons.keyboard_arrow_down)),
                      )
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(360),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Icon(Icons.wb_sunny, color: Colors.yellow,),
                            Text("Oct 25th", style: TextStyle( color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(360)
                  ),
                )
              ],
            ),
          ),
          const SizedBox( height: 10 ,),
          AnimatedContainer(
            height: expanded ? 330 : 0,
            duration: const Duration(milliseconds: 800),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PageView.builder(
                    itemBuilder: (context, position) {
                      return ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ViewDropDown(),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text("Living Room", style: TextStyle( color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold), ),
          ),
          Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("7 devices", style: TextStyle(color: Colors.grey, fontSize: 14),),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only( left: 8, right: 8, top: 4, bottom: 4),
                      child: Text("EDIT", style: TextStyle( color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),),
                    ),
                  ),
                ), //edit btn`
              ]
          ),
          const SizedBox(
            height: 10,
          ),
          Features(),
          const SizedBox( height: 20,),
        ],
      ),
    );
  }

}