import 'package:flutter/material.dart';
import 'dialog_delete.dart';

class DialogAccount extends StatelessWidget {
  const DialogAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/icons/trash.png', fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('정말 탈퇴하시겠어요?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 5),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          /*contentPadding: EdgeInsets.zero,*/
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            side: BorderSide(color: Colors.grey, width: 2.5),
                          ),
                          content: DialogDelete(),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      backgroundColor: Color.fromARGB(255, 255, 17, 0)),
                  child: Center(
                    child: Text("탈퇴",
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
                      minimumSize: Size(100, 50), backgroundColor: Colors.grey),
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
