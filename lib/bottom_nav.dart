import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BottomIcon{
  Home,
  Video,
  Share,
  Mic
}
class BottomNav extends StatelessWidget{
  BottomIcon bottomIcon = BottomIcon.Home;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      shadowColor: Colors.grey,
      elevation: 8,
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      child: Container(
        padding: const EdgeInsets.symmetric( horizontal: 24, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            GestureDetector(
              onTap: (){
                bottomIcon = BottomIcon.Home;
              },
              child: Container(
                padding: const EdgeInsets.symmetric( horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: const [
                    Icon(Icons.home, color: Colors.white,),
                    SizedBox(width: 8,),
                    Text("Home", style: TextStyle(color: Colors.white),),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.arrow_drop_up_outlined, color: Colors.white,)
                  ],
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric( horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: const Icon(Icons.file_upload_rounded),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: const Icon(Icons.share),
            ),
            Container(
              padding: const EdgeInsets.symmetric( horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: const Icon(Icons.mic),
            ),
          ],
        ),
      ),
    );
  }

}