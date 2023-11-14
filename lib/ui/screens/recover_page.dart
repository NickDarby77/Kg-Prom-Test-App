import 'package:flutter/material.dart';
import 'package:kg_prom_task/ui/theme/app_colors.dart';
import 'package:kg_prom_task/ui/theme/app_fonts.dart';
import 'package:kg_prom_task/ui/widgets/register_button.dart';
import 'package:kg_prom_task/ui/widgets/textfield_widget.dart';

class RecoverPage extends StatefulWidget {
  const RecoverPage({super.key});

  @override
  State<RecoverPage> createState() => _RecoverPageState();
}

class _RecoverPageState extends State<RecoverPage> {
  bool showText = true;
  bool showText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Восстановление пароля',
                style: AppFonts.s22w700,
              ),
            ),
            const SizedBox(height: 42),
            const Text(
              'Нужно создать новый пароль',
              style: AppFonts.s14w600,
            ),
            const SizedBox(height: 8),
            const Text(
              'Введите свой новый пароль а после повторите его.',
              style: AppFonts.s14w400,
            ),
            const SizedBox(height: 18),
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
            const SizedBox(height: 8),
            TextFieldWidget(
              obscureText: showText2,
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
            ),
            const SizedBox(height: 42),
            Center(
              child: RegisterButtonWidget(
                buttonText: 'Восстановить пароль ',
                size: const Size(270, 47),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text(
                        'Password was reset',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
