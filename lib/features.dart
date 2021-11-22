import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Features extends StatefulWidget {

  @override
  _Features createState() => _Features();

}

class _Features extends State<Features>{
  double value = 50;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: PhysicalModel(
                elevation: 4,
                color: Colors.white,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                    width: width/2-15,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue[200],
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon( Icons.wifi, color: Colors.blue,),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Nest Wifi", style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                  Text("Connected", style: TextStyle( color: Colors.grey, fontSize: 16),)
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: (width/2-25)*2/3-5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey[200],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.arrow_downward, color: Colors.black54, size: 18,),
                                        Text("97", style: TextStyle( color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    SizedBox(
                                        width: (width/2-25)*2/3-10,
                                        child: const Center(child: Text("Mbps Download", style: TextStyle( color: Colors.black38, fontSize: 14),))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 55,
                                width: (width/2-25)*1/3-5,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Icon(Icons.arrow_upward, color: Colors.black38, size: 18 ,),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: PhysicalModel(
                elevation: 3,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: width/2-15,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent[200],
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(

                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent[100],
                                  borderRadius: BorderRadius.circular(360)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon( Icons.light, color: Colors.white,),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Lamp", style: TextStyle( color: Colors.white, fontSize: 18),),
                                Text("Opening", style: TextStyle(color: Colors.white60, fontSize: 16),)
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 13,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 55,
                              thumbShape: SliderComponentShape.noOverlay,
                              overlayShape: SliderComponentShape.noOverlay,
                              valueIndicatorShape: SliderComponentShape.noOverlay,
                            ),
                            child: Slider(
                              inactiveColor: Colors.blue[100],
                              activeColor: Colors.white,
                              min: 0,
                              max: 100,
                              onChanged: (double value) {
                                setState(() {
                                  this.value = value;
                                });
                              },
                              value: value,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: PhysicalModel(
                elevation: 4,
                color: Colors.white,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                    width: width/2-15,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon( Icons.light, color: Colors.grey,),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Lamp 2", style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                  Text("Unavailable", style: TextStyle( color: Colors.grey, fontSize: 16),)
                                ],
                              )
                            ],
                          ),

                        ],
                      ),
                    )
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: PhysicalModel(
                elevation: 3,
                color: Colors.white,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: width/2-15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 4, vertical: 8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(360)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon( Icons.airplay, color: Colors.grey,),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Smart TV", style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                Text("Closed", style: TextStyle(color: Colors.black38, fontSize: 16),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 13,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: PhysicalModel(
                elevation: 4,
                color: Colors.white,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                    width: width/2-15,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon( Icons.ac_unit, color: Colors.grey,),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  SizedBox(
                                    width: width/2 - 80,
                                    child: const Text("Air Conditioner", style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                  ),
                                  const Text("Connected", style: TextStyle( color: Colors.grey, fontSize: 16),)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: PhysicalModel(
                elevation: 4,
                color: Colors.white,
                shadowColor: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                    width: width/2-15,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(360)
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon( Icons.light, color: Colors.grey,),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Lamp 3", style: TextStyle( color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                                  Text("Closed", style: TextStyle( color: Colors.grey, fontSize: 16),)
                                ],
                              )
                            ],
                          ),

                        ],
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

}