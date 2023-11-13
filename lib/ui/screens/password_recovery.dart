import 'package:flutter/material.dart';
import 'package:kg_prom_task/ui/screens/confirmation_page.dart';
import 'package:kg_prom_task/ui/widgets/register_button.dart';
import 'package:kg_prom_task/ui/widgets/textfield_widget.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

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
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 42),
            const Text(
              'Забыли пароль?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Введите свой номер телефона ниже, и мы вышлем СМС для его сброса.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 18),
            const TextFieldWidget(
              personalDataQuestion: 'Номер Телефона',
              personalDataAnswer: '+996 555 456 456',
            ),
            const SizedBox(height: 42),
            Center(
              child: RegisterButtonWidget(
                buttonText: 'Подтвердить',
                size: const Size(150, 47),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfirmationPage(),
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
