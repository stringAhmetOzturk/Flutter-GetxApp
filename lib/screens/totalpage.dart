import 'package:flutter/material.dart';
import 'package:flutter_getx_example/controller.dart';
import 'package:flutter_getx_example/main.dart';
import 'package:get/get.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({Key? key}) : super(key: key);

  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  final MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total items ${controller.total}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    child: Text(
                      "Geri dön",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () => Get.back(),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
