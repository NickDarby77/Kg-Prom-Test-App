import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.personalDataQuestion,
    required this.personalDataAnswer,
    this.eye,
    this.obscureText,
  });

  final String personalDataQuestion;
  final String personalDataAnswer;
  final IconButton? eye;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            personalDataQuestion,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: 55,
            child: TextField(
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                suffixIcon: eye,
                hintText: personalDataAnswer,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(
                    width: 0.7,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
