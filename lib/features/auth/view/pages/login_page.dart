import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../main/main_screen.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_header.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/social_auth_button.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const AuthHeader(
                title: "Welcome Back 👋",
                subtitle:
                    "Sign in to access your travel portfolio and bookings.",
              ),
              const SizedBox(height: 48),

              _buildLabel("Email Address"),
              const SizedBox(height: 8),
              const AuthTextField(
                hint: "example@mail.com",
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 24),

              _buildLabel("Password"),
              const SizedBox(height: 8),
              const AuthTextField(
                hint: "••••••••",
                icon: Icons.lock_outline,
                isPassword: true,
              ),

              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.outfit(
                      color: const Color(0xFF4361EE),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              AuthButton(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                },
              ),
              const SizedBox(height: 24),

              _buildDivider(),
              const SizedBox(height: 24),

              SocialAuthButton(
                text: "Sign in with Google",
                iconUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png',
                onPressed: () {},
              ),

              const SizedBox(height: 48),

              _buildFooter(context),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Text(
      label,
      style: GoogleFonts.outfit(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF1E293B),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        const Expanded(child: Divider(color: Color(0xFFE2E8F0))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Or continue with",
            style: GoogleFonts.outfit(
              color: const Color(0xFF94A3B8),
              fontSize: 14,
            ),
          ),
        ),
        const Expanded(child: Divider(color: Color(0xFFE2E8F0))),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: GoogleFonts.outfit(color: const Color(0xFF64748B)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
          },
          child: Text(
            "Sign Up",
            style: GoogleFonts.outfit(
              color: const Color(0xFF4361EE),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
