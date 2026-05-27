import 'package:flutter/material.dart';

class LoginTextFeild extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType keyBoardType;
  final TextEditingController? controller;

  const LoginTextFeild({
    super.key,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyBoardType = TextInputType.text,
    this.controller,
  });

  @override
  State<LoginTextFeild> createState() => _LoginTextFeildState();
}

class _LoginTextFeildState extends State<LoginTextFeild> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();

    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 10),

        TextFormField(
          controller: widget.controller,
          obscureText: _obscureText,
          keyboardType: widget.keyBoardType,

          decoration: InputDecoration(
            hintText: widget.hintText,

            prefixIcon: widget.prefixIcon != null
                ? Icon(widget.prefixIcon)
                : null,

            // Eye icon
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),

                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null,

            filled: true,

            fillColor: const Color.fromARGB(
              255,
              210,
              244,
              201,
            ).withValues(alpha: 0.85),

            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 3, 157, 70),
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
