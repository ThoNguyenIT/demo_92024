import 'package:flutter/material.dart';

class DialogRename extends StatelessWidget {
  const DialogRename({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Center(
              child: Text('방 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Divider(color: Colors.black),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('변경 할 방 이름',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text('무궁화 실',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Color.fromARGB(255, 255, 17, 0)),
                  child: Center(
                    child: Text("변경",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.grey),
                  child: Center(
                    child: Text("취소",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
