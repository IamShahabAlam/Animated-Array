// ignore_for_file: dead_code

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class MyController extends GetxController {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
   List<dynamic> items = [].obs;
  RxInt counter = 0.obs;

     Widget slideIt(BuildContext context, int index, animation) {
    int item = items[index];
    TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26, letterSpacing: 2.5);
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset(0, 0),
      ).animate(animation),
      child: SizedBox(
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: DelayedDisplay(
              delay: Duration(milliseconds: 500),
              child: Text('Item $item'.toUpperCase(), style: textStyle)),
          ),
        ),
      ),
    );

    update(){
      listKey.currentState.insertItem(0,
                        duration: const Duration(milliseconds: 500));
                    items = []
                      ..add(counter.value++)
                      ..addAll(items);
    }

    deleteVal(){
      // if (items.length <= 1) return;
      //             listKey.currentState.removeItem(
      //                 0, (_, animation) => slideIt(context, 0, animation),
      //                 duration: const Duration(milliseconds: 500));

                      items.removeAt(0);
    }


  }
  }

