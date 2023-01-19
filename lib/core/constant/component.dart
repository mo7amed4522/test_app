import 'package:flutter/material.dart';

Widget defaultTextForm({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String label,
  bool formEnable = true,
  bool readOnly = false,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPress,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  required color,
  required Function validate,
  bool isPassword = false,
}) =>
    TextFormField(
      style: TextStyle(
        color: color,
      ),
      readOnly: readOnly,
      obscureText: isPassword,
      enabled: formEnable,
      controller: controller,
      keyboardType: keyboardType,
      onTap: () {
        onTap!();
      },
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      validator: (s) {
        return validate(s);
      },
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        labelText: label,
        //border: const OutlineInputBorder(),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPress!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
      ),
    );
