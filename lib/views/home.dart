import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:shahab_task/controller/mycontroller.dart';


class SimpleAnimatedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliceAnimatedList(),
    );
  }
}

class SliceAnimatedList extends StatelessWidget {
  // List<int> _items = [];
  // int counter = 0;

  // Widget slideIt(BuildContext context, int index, animation) {
  //   int item = _items[index];
  //   TextStyle textStyle = Theme.of(context).textTheme.headline4;
  //   return SlideTransition(
  //     position: Tween<Offset>(
  //       begin: const Offset(-1, 0),
  //       end: Offset(0, 0),
  //     ).animate(animation),
  //     child: SizedBox(
  //       height: 128.0,
  //       child: Card(
  //         color: Colors.primaries[item % Colors.primaries.length],
  //         child: Center(
  //           child: Text('Item $item', style: textStyle),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Container(
            height: double.infinity,
            child: Obx(
              () => AnimatedList(
                key: myController.listKey,
                initialItemCount: myController.items.length,
                itemBuilder: (context, index, animation) {
                  return myController.slideIt(context, index, animation);
                },
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20.0),
          // decoration: BoxDecoration(color: Colors.greenAccent),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              DelayedDisplay(
                delay: Duration(seconds: 1),
                child: AnimatedButton(
                onPress: (){
                  myController.listKey.currentState.insertItem(0,
                          duration: const Duration(milliseconds: 500));
                      myController.items = []
                        ..add(myController.counter.value++)
                        ..addAll(myController.items);
                },
                height: 40.0,
                borderRadius: 20.0,
                animatedOn: AnimatedOn.onTap,
                isReverse: true,
                  width: 150,
                  text: 'Update',
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.	BOTTOM_CENTER_ROUNDER,
                  textStyle: TextStyle(
                      fontSize: 20,
                      // letterSpacing: 5,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold),
                ),
              ),

                            SizedBox(width: 20.0,),
             
             DelayedDisplay(
              delay: Duration(seconds: 1),
               child: AnimatedButton(
                onPress: () {
                   
                    if (myController.items.length <= 1) return;
                    myController.listKey.currentState.removeItem(
                        0, (_, animation) => myController.slideIt(context, 0, animation),
                        duration: const Duration(milliseconds: 500));
             
                    // setState(() {
                      myController.items.removeAt(0);
                    // });
                  },
                height: 40.0,
                borderRadius: 20.0,
                animatedOn: AnimatedOn.onTap,
                isReverse: true,
                  width: 150,
                  text: 'Delete',
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.	BOTTOM_CENTER_ROUNDER,
                  textStyle: TextStyle(
                      fontSize: 20,
                      // letterSpacing: 5,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold),
                ),
             ),



              
                  
              
            ],
          ),
        ),
      ],
    );
  }
}
