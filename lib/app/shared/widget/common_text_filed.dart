import 'package:flutter/material.dart';
import 'package:nutritrion/app/common/text_form_field_type.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      this.title,
      required this.hintText,
      this.textEditingController,
      this.maxLine,
      this.icon,
      this.readOnly,
      this.isNumType,
      this.formType});

  final String? title;
  final String hintText;
  final TextEditingController? textEditingController;
  final int? maxLine;
  final Widget? icon;
  final bool? readOnly;
  final bool? isNumType;
  final TextFormFieldType? formType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null) ...[
          Text(
            title ?? '',
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        TextFormField(
          keyboardType: (isNumType != null) ? TextInputType.number : TextInputType.text,
          readOnly: readOnly ?? false,
          maxLines: maxLine,
          controller: textEditingController,
          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          validator: (value) {
            if ((value == null || value.isEmpty) && textEditingController != null) {
              return "Empty";
            } else if (formType == TextFormFieldType.double &&
                (double.tryParse(value ?? '') == null || double.parse(value ?? '') <= 0)) {
              return "Malformed";
            } else if (formType == TextFormFieldType.int &&
                (int.tryParse(value ?? '') == null || int.parse(value ?? '') <= 0)) {
              return "Malformed";
            }
            return null;
          },
          decoration: InputDecoration(
            suffixIcon: icon,
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.lightBlueAccent),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          ),
        ),
      ],
    );
  }
}
