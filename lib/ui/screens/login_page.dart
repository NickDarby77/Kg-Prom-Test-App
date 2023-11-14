import 'package:flutter/material.dart';
import 'package:kg_prom_task/ui/screens/password_recovery.dart';
import 'package:kg_prom_task/ui/theme/app_colors.dart';
import 'package:kg_prom_task/ui/theme/app_fonts.dart';
import 'package:kg_prom_task/data/animation_function.dart';
import 'package:kg_prom_task/ui/widgets/register_button.dart';
import 'package:kg_prom_task/ui/widgets/textfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Вход',
                style: AppFonts.s22w700,
              ),
              const SizedBox(height: 33),
              const TextFieldWidget(
                personalDataQuestion: 'ИНН',
                personalDataAnswer: '12345678901234',
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  TextFieldWidget(
                    obscureText: showText,
                    personalDataQuestion: 'Пароль',
                    personalDataAnswer: '********',
                    eye: IconButton(
                      onPressed: () {
                        showText = !showText;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                      color: AppColors.eyeColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            createRoute(
                              destinationPage: const PasswordRecoveryPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Забыли пароль?',
                          style: AppFonts.w500UnderlineText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 49),
              RegisterButtonWidget(
                buttonText: 'Вход',
                size: const Size(120, 47),
                onPressed: () {
                  Navigator.push(
                    context,
                    createRoute(
                      destinationPage: const PasswordRecoveryPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
