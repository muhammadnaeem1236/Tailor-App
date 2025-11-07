import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/screens/01_auth_screen/sign_up/provider/sign_up_provider.dart';

class SignUpTextField extends StatelessWidget {
  final String hintText;
  final String fieldType;

  const SignUpTextField({
    super.key,
    required this.hintText,
    required this.fieldType,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<SignUpProvider>(
        builder: (context, provider, child) {
          final String? error = _getError(provider);
          final Function(String) onChanged = _getOnChanged(provider);

          return SizedBox(
            width: 340,
            child: TextFormField(
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText,
                errorText: error,
                errorStyle: const TextStyle(color: Colors.red),
                filled: true,
                fillColor: Colors.white,
                hintStyle: LightColorTextStyles.schama.headlineSmall,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Get error message
  String? _getError(SignUpProvider provider) {
    switch (fieldType) {
      case 'name':
        return provider.nameError;
      case 'email':
        return provider.emailError;
      case 'phone':
        return provider.phoneError;
      case 'password':
        return provider.passwordError;
      case 'pan':
        return provider.panError;
      case 'address':
        return provider.addressError;
      default:
        return null;
    }
  }

  // Get update function
  void Function(String) _getOnChanged(SignUpProvider provider) {
    switch (fieldType) {
      case 'name':
        return provider.updateName;
      case 'email':
        return provider.updateEmail;
      case 'phone':
        return provider.updatePhone;
      case 'password':
        return provider.updatePassword;
      case 'pan':
        return provider.updatePan;
      case 'address':
        return provider.updateAddress;
      default:
        return (_) {};
    }
  }
}
