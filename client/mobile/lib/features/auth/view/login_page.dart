import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/theme/app_color.dart';
import 'package:mobile/core/theme/app_theme.dart';
import 'package:mobile/core/widgets/gradient_background.dart';
import 'package:mobile/features/auth/view/signup_page.dart';
import 'package:mobile/features/auth/widget/login_text_feild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),

                  Text(
                    'Welcome Back 👋',
                    style: AppTheme.lightTheme.textTheme.headlineLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Login to continue',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
                  ),
                  const SizedBox(height: 40),

                  LoginTextFeild(
                    controller: _emailController,
                    labelText: "Email",
                    hintText: "Enter your email",
                    prefixIcon: Icons.email_outlined,
                    keyBoardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  LoginTextFeild(
                    controller: _passwordController,
                    labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon: Icons.lock_outline,
                    obscureText: true,
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},

                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: AppColor.textPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 5, 154, 15),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpPage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
