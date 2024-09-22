import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/login_controller.dart';
import '../home_page/home_page.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'ID',
                    labelStyle: TextStyle(fontSize: 30, color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                  onChanged: (value) => controller.id.value = value,
                ),
                const SizedBox(height: 20),
                Obx(
                  () => TextFormField(
                    style: const TextStyle(fontSize: 30, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'PW',
                      labelStyle:
                          const TextStyle(fontSize: 30, color: Colors.white),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.togglePasswordVisibility();
                        },
                        icon: Icon(
                          controller.showPassword.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    obscureText: !controller.showPassword.value,
                    onChanged: (value) => controller.pw.value = value,
                  ),
                ),
                const SizedBox(height: 20),
                Obx(
                  () => Row(
                    children: [
                      Checkbox(
                        value: controller.isAutoLogin.value,
                        onChanged: (bool? newValue) {
                          controller.toggleAutoLogin(newValue);
                        },
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      const Text(
                        '자동 로그인',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blue),
                  child: const Text(
                    "회원 가입",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    controller.validateFields();
                    if (!controller.id.value.isEmpty &&
                        !controller.pw.value.isEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blue),
                  child: const Text(
                    "로그인",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
