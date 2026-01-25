import 'package:flutter/material.dart';
import '../routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 92),

                Center(
                  child: Image.asset(
                    'assets/img/login_image.png',
                  ),
                ),

                const SizedBox(height: 17),

                Center(
                  child: Text(
                    'Let’s get started',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFFEB4D57),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Center(
                  child: Text(
                    'Create account to start ordering',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF343434),
                    ),
                  ),
                ),

                const SizedBox(height: 38),

                Text(
                  'Continue with',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9E9E9E),
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.transparent),
                          padding: EdgeInsets.zero,
                          minimumSize: Size(0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        onPressed: () {},
                        child: Image.asset(
                          'assets/img/button_google.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.transparent),
                          padding: EdgeInsets.zero,
                          minimumSize: Size(0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        onPressed: () {},
                        child: Image.asset(
                          'assets/img/button_apple.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF917476),
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                Text(
                  'Your Phone number',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF9E9E9E),
                  ),
                ),

                const SizedBox(height: 8),

                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color(0xFFCCCCCC),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black26,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  'By pressing “Continue”, you are agreeing to our',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF949494),
                  ),
                ),

                Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEB4D57),
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 34),
        child: SizedBox(
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEB4D57),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: const Text(
              'Continue',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}