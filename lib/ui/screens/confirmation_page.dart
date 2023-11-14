import 'package:flutter/material.dart';
import 'package:kg_prom_task/ui/screens/password_recovery.dart';
import 'package:kg_prom_task/ui/screens/recover_page.dart';
import 'package:kg_prom_task/ui/theme/app_fonts.dart';
import 'package:kg_prom_task/data/animation_function.dart';
import 'package:kg_prom_task/ui/widgets/register_button.dart';
import 'package:kg_prom_task/ui/widgets/textfield_widget.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

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
              'Введите код из СМС',
              style: AppFonts.s14w600,
            ),
            const SizedBox(height: 8),
            const Text(
              'Для продолжения сброса пароля Вам нужно ввести код, который Вам пришел в СМС.',
              style: AppFonts.s14w400,
            ),
            const SizedBox(height: 18),
            Column(
              children: [
                const TextFieldWidget(
                  personalDataQuestion: 'СМС код',
                  personalDataAnswer: '2345',
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
                        'Не получили СМС?',
                        style: AppFonts.w500UnderlineText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 42),
            Center(
              child: RegisterButtonWidget(
                buttonText: 'Подтвердить',
                size: const Size(180, 47),
                onPressed: () {
                  Navigator.push(
                    context,
                    createRoute(
                      destinationPage: const RecoverPage(),
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
