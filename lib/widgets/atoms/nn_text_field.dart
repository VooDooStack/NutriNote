import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class NNTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Icon? icon;
  final String? Function(String?)? validator;
  const NNTextField({
    Key? key,
    this.labelText,
    this.hintText,
    this.icon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: labelText ?? '',
      validator: validator ?? FormBuilderValidators.compose([]),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        suffixIcon: icon,
      ),
    );
  }
}
