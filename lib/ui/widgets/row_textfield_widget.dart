import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class RowTextFieldWidget extends StatelessWidget {
  const RowTextFieldWidget({
    super.key,
    required this.personalDataQuestion,
    required this.personalDataQuestion2,
    required this.personalDataAnswer,
  });

  final String personalDataQuestion;
  final String personalDataQuestion2;
  final String personalDataAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
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
                  child: DropDownTextField(
                    dropDownIconProperty: IconProperty(
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    dropDownList: const [
                      DropDownValueModel(
                        name: 'Senior',
                        value: Icon(
                          Icons.handshake,
                        ),
                      ),
                       DropDownValueModel(
                        name: 'Middle',
                        value: Icon(
                          Icons.handshake,
                        ),
                      ),
                    ],
                    textFieldDecoration: InputDecoration(
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
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  personalDataQuestion2,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 55,
                  child: DropDownTextField(
                    dropDownIconProperty: IconProperty(
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    dropDownList: const [
                      DropDownValueModel(
                        name: 'Male',
                        value: 'a',
                      ),
                      DropDownValueModel(
                        name: 'Female',
                        value: 'a',
                      ),
                    ],
                    textFieldDecoration: InputDecoration(
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
          ),
        ],
      ),
    );
  }
}
