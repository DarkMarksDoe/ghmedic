import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghmedic/app/modules/login/login_controller.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GetBuilder<LoginController>(
        builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 58),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 36),
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'GH ',
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(text: 'Medic '),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            'Username',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          controller: controller.usernameController,
                          onChanged: controller.onUsernameChanged,
                          decoration: InputDecoration(
                            hintText: 'Type your username',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          child: Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          controller: controller.passwordController,
                          onChanged: controller.onPasswordChanged,
                          obscureText: !controller.showPassword,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: 'Type  your password',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.showPassword ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: controller.toggleShowPassword,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 65),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Builder(
                          builder: (context) {
                            if (controller.isLoggingIn) {
                              return TextButton(
                                child: Text(
                                  'Signing in...',
                                  style: TextStyle(color: Colors.grey, fontSize: 24),
                                ),
                                onPressed: null,
                              );
                            }
                            return TextButton(
                              child: Text('Sign in', style: TextStyle(fontSize: 24)),
                              onPressed: controller.validateFields,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
