import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controller.dart';

class DialogDelete extends StatelessWidget {
  const DialogDelete({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    var showHidden = false.obs;
    return Wrap(
      children: [
        Column(
          children: [
            Center(
              child: Text('비밀번호를 입력해주세요.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Obx(
                  () => TextFormField(
                    obscureText: !showHidden.value,
                    onChanged: (value) => controller.pw.value = value,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 14),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      /* suffixIcon: IconButton(
                                  onPressed: () => showPass(),
                                  icon: Icon(
                                      showHidden.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.white),
                                ), */
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.red[800]),
                child: Center(
                  child: Text("취소",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
