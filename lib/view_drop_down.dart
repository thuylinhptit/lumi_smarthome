import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewDropDown extends StatefulWidget{
  @override
  _ViewDropDown createState() => _ViewDropDown();
}

class _ViewDropDown extends State<ViewDropDown>{
  int checkMusic = 0;
  int checkGoingOut = 0;
  int checkNight = 0;
  int checkMovie = 0;
  int checkSleep = 0;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 30, bottom: 10),
          child: Text(
            "Good Morning,", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27, decoration: TextDecoration.none),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only( left: 15 ),
          child: Text(
            "Ahang", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27,decoration: TextDecoration.none),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only( left: 15 , right: 15, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Scenes", style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,decoration: TextDecoration.none),
                ),
                Icon(Icons.more_vert_sharp, color: Colors.grey,)
              ],
            )
        ),

        PhysicalModel(
          elevation: 2,
          color: Colors.white,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        PhysicalModel(
                          elevation: 3,
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(80),
                          child: checkMusic == 0 ? Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)
                            ),
                          ): Container(
                            height: 120,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.pink[200],
                                        borderRadius: BorderRadius.circular(360)
                                    ),
                                  ),
                                  onTap: () => setState(() {
                                    if( checkMusic == 1 ){
                                      checkMusic = 0;
                                    }
                                    else{
                                      checkMusic = 1;
                                      checkSleep = 0;
                                      checkMovie = 0;
                                      checkNight = 0;
                                      checkGoingOut = 0;
                                    }
                                  }),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("Music", style: TextStyle( color: Colors.black, fontSize: 13,decoration: TextDecoration.none),)
                              ],
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Stack(
                        children: [
                          PhysicalModel(
                            elevation: 3,
                            color: Colors.white,
                            shadowColor: Colors.grey,
                            borderRadius: BorderRadius.circular(80),
                            child: checkGoingOut == 0 ? Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360)
                              ),
                            ): Container(
                              height: 120,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360)
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.blue[200],
                                          borderRadius: BorderRadius.circular(360)
                                      ),
                                    ),
                                    onTap: () => setState(() {
                                      if( checkGoingOut == 1 ){
                                        checkGoingOut = 0;
                                      }
                                      else{
                                        checkGoingOut = 1;
                                        checkMusic = 0;
                                        checkSleep = 0;
                                        checkMovie = 0;
                                        checkNight = 0;
                                      }
                                    }),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const SizedBox(
                                      width: 40,
                                      child: Text("Going out", style: TextStyle( color: Colors.black, fontSize: 13,),
                                        textAlign: TextAlign.center,))
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        PhysicalModel(
                          elevation: 3,
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(80),
                          child: checkNight == 0 ? Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)
                            ),
                          ): Container(
                            height: 120,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.purple[200],
                                        borderRadius: BorderRadius.circular(360)
                                    ),
                                  ),
                                  onTap: () => setState(() {
                                    if( checkNight == 1 ){
                                      checkNight = 0;
                                    }
                                    else{
                                      checkNight = 1;
                                      checkMusic = 0;
                                      checkSleep = 0;
                                      checkMovie = 0;
                                      checkGoingOut = 0;
                                    }
                                  }),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("Night", style: TextStyle( color: Colors.black, fontSize: 13,decoration: TextDecoration.none),)
                              ],
                            )
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        PhysicalModel(
                          elevation: 3,
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(80),
                          child: checkMovie == 0 ? Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)
                            ),
                          ): Container(
                            height: 120,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green[200],
                                        borderRadius: BorderRadius.circular(360)
                                    ),
                                  ),
                                  onTap: () => setState(() {
                                    if( checkMovie == 1 ){
                                      checkMovie = 0;
                                    }
                                    else{
                                      checkMovie = 1;
                                      checkMusic = 0;
                                      checkSleep = 0;
                                      checkNight = 0;
                                      checkGoingOut = 0;
                                    }
                                  }),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("Movie", style: TextStyle( color: Colors.black, fontSize: 13,decoration: TextDecoration.none),)
                              ],
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Stack(
                        children: [
                          PhysicalModel(
                            elevation: 3,
                            color: Colors.white,
                            shadowColor: Colors.grey,
                            borderRadius: BorderRadius.circular(80),
                            child: checkSleep == 0 ? Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360)
                              ),
                            ): Container(
                              height: 120,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360)
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.orange[200],
                                          borderRadius: BorderRadius.circular(360)
                                      ),
                                    ),
                                    onTap: () => setState(() {
                                      if( checkSleep == 1 ){
                                        checkSleep = 0;
                                      }
                                      else{
                                        checkSleep = 1;
                                        checkMusic = 0;
                                        checkMovie = 0;
                                        checkNight = 0;
                                        checkGoingOut = 0;
                                      }
                                    }),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text("Sleep", style: TextStyle( color: Colors.black, fontSize: 13,decoration: TextDecoration.none),)
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 3,
                  width: 30,
                  decoration: const BoxDecoration(
                      color: Colors.grey
                  ),
                ),
                const SizedBox( height: 10,)
              ],
            ),
          ),
        ),

      ],
    );

  }

}