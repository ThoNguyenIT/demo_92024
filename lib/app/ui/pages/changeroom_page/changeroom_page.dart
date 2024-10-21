import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_template/app/ui/pages/changeroom_page/dialog_rename.dart';
import '../../../controllers/changeroom_controller.dart';

class ChangeroomPage extends GetView<ChangeroomController> {
  const ChangeroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () => Navigator.of(context).pop()),
        title: Text('방 이름 변경',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset('assets/images/ShipRoom.png',
                        fit: BoxFit.fill),
                  ),
                  Positioned(
                    top: 170,
                    left: 15,
                    right: 10,
                    bottom: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        child: Image.asset(
                                            'assets/images/room1.png')),
                                    SizedBox(width: 10),
                                    Text(
                                      '판교호',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        child: Image.asset(
                                            'assets/images/room2.png')),
                                    SizedBox(width: 10),
                                    Text(
                                      '성남호',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        child: Image.asset(
                                            'assets/images/room3.png')),
                                    SizedBox(width: 10),
                                    Text(
                                      '분당호',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: InkWell(
                          child: Image.asset('assets/images/roomship1.png',
                              fit: BoxFit.fill),
                          onTap: () => showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                /* contentPadding: EdgeInsets.zero, */
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  side: BorderSide(
                                      color: Colors.grey, width: 2.5),
                                ),
                                content: DialogRename(),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/roomship2.png',
                            fit: BoxFit.fill),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/roomship3.png',
                            fit: BoxFit.fill),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
