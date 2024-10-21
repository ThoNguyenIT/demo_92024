import 'package:getx_flutter_template/app/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    var showHidden = false.obs;
    void showPass() {
      showHidden.toggle();
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background.png")),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    onChanged: (value) => controller.id.value = value,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        labelText: 'ID',
                        labelStyle:
                            TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  SizedBox(height: 20),
                  Obx(
                    () => TextFormField(
                      obscureText: !showHidden.value,
                      onChanged: (value) => controller.pw.value = value,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        labelText: 'PW',
                        labelStyle:
                            TextStyle(fontSize: 30, color: Colors.white),
                        suffixIcon: IconButton(
                          onPressed: () => showPass(),
                          icon: Icon(
                              showHidden.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Obx(
                    () => Row(
                      children: [
                        Checkbox(
                          value: controller.isAutoLogin.value,
                          onChanged: (bool? newValue) =>
                              controller.autoLogin(newValue),
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                          side: BorderSide(width: 2, color: Colors.blue),
                        ),
                        Text(
                          '자동 로그인',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  /* ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue),
                    child: Text("회원 가입",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 16), */
                  ElevatedButton(
                    onPressed: () {
                      controller.validateFields();
                      if (controller.id.value.isNotEmpty &&
                          controller.pw.value.isNotEmpty) {
                        Get.offAll(() => HomePage());
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue),
                    child: Text("로그인",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
