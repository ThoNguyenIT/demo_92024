import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/account_controller.dart';
import '../../../controllers/login_controller.dart';
import 'dialog_account.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    var showHidden = false.obs;
    /* void showPass() {
      showHidden.toggle();
    } */
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () => Navigator.of(context).pop()),
        title: Text('회원 정보 변경',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('이름', style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2)),
                      ),
                      child: Center(
                        child: Text('홍길동',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('연락처', style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2)),
                      ),
                      child: Center(
                        child: Text('010-1234-1234',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('회사코드', style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2)),
                      ),
                      child: Center(
                        child: Text('008241',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('비밀번호', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Obx(
                        () => TextFormField(
                          obscureText: !showHidden.value,
                          onChanged: (value) => controller.pw.value = value,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 14),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Divider(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('비밀번호 확인',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: Obx(
                        () => TextFormField(
                          obscureText: !showHidden.value,
                          onChanged: (value) => controller.pw.value = value,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 14),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
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
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 50),
                        backgroundColor: Colors.green[600],
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text("비밀번호 변경",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    ElevatedButton(
                      onPressed: () => showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            /*contentPadding: EdgeInsets.zero,*/
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              side: BorderSide(color: Colors.grey, width: 2.5),
                            ),
                            content: DialogAccount(),
                          );
                        },
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 50),
                        backgroundColor: Colors.red[800],
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text("회원 삭제",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
