import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:kg_prom_task/ui/theme/app_fonts.dart';

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
                  style: AppFonts.s15w500,
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
                        value: '',
                      ),
                      DropDownValueModel(
                        name: 'Middle',
                        value: '',
                      ),
                      DropDownValueModel(
                        name: 'Junior',
                        value: '',
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
                  style: AppFonts.s15w500,
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
                        value: '',
                      ),
                      DropDownValueModel(
                        name: 'Female',
                        value: '',
                      ),
                      DropDownValueModel(
                        name: 'Not Determined',
                        value: '',
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
