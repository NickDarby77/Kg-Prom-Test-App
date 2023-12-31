import 'package:flutter/material.dart';
import 'package:kg_prom_task/ui/screens/login_page.dart';
import 'package:kg_prom_task/ui/theme/app_colors.dart';
import 'package:kg_prom_task/ui/theme/app_fonts.dart';
import 'package:kg_prom_task/data/animation_function.dart';
import 'package:kg_prom_task/ui/widgets/register_button.dart';
import 'package:kg_prom_task/ui/widgets/row_textfield_widget.dart';
import 'package:kg_prom_task/ui/widgets/textfield_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool showText = true;
  bool showText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const SizedBox(height: 22),
                const Text(
                  'Зарегистрировать сотрудника',
                  style: AppFonts.s23w600,
                ),
                const SizedBox(height: 22),
                const TextFieldWidget(
                  personalDataQuestion: 'Имя',
                  personalDataAnswer: 'Айдай',
                ),
                const TextFieldWidget(
                  personalDataQuestion: 'Фамилия',
                  personalDataAnswer: 'Кадырова',
                ),
                const TextFieldWidget(
                  personalDataQuestion: 'ИНН',
                  personalDataAnswer: '12345678901234',
                  textType: TextInputType.number,
                ),
                const TextFieldWidget(
                  personalDataQuestion: 'Номер телефона',
                  personalDataAnswer: '12345678901234',
                  textType: TextInputType.phone,
                ),
                const RowTextFieldWidget(
                  personalDataQuestion: 'Должность',
                  personalDataAnswer: '-----',
                  personalDataQuestion2: 'Пол',
                ),
                Column(
                  children: [
                    TextFieldWidget(
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
                      obscureText: showText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Не менее 8 символов',
                          style: TextStyle(
                            color: AppColors.min8SymbolsColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextFieldWidget(
                  personalDataQuestion: 'Повторите пароль',
                  personalDataAnswer: '********',
                  eye: IconButton(
                    onPressed: () {
                      showText2 = !showText2;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                    color: AppColors.eyeColor,
                  ),
                  obscureText: showText2,
                ),
                const SizedBox(height: 22),
                RegisterButtonWidget(
                  buttonText: 'Зарегистрировать',
                  size: const Size(220, 47),
                  onPressed: () {
                    Navigator.push(
                      context,
                      createRoute(
                        destinationPage: const LoginPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
