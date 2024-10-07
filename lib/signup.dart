import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E), // Background color
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return webLayout(context);
          } else {
            return mobileLayout(context);
          }
        },
      ),
    );
  }

  // Mobile Layout
  Widget mobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          _buildTextField('First Name', Icons.check_circle),
          const SizedBox(height: 16),
          _buildTextField('Last Name', Icons.check_circle),
          const SizedBox(height: 16),
          _buildTextField('@john_doe', Icons.check_circle),
          const SizedBox(height: 16),
          _buildTextField('johndoe@gmail.com', Icons.check_circle),
          const SizedBox(height: 16),
          _buildTextField('**********', Icons.visibility_off, obscureText: true),
          const SizedBox(height: 16),
          _buildTextField('**********', Icons.check_circle, obscureText: true),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (newValue) {},
                checkColor: Colors.white,
                activeColor: const Color(0xFF00FF6A),
              ),
              Expanded(
                child: RichText(
                  text: const TextSpan(
                    text: 'By signing up you accept the ',
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: 'Term of Service ',
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Sign Up logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00FF6A),
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account? ',
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Go back to Sign In
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Web Layout
  Widget webLayout(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600), // Max width for the form
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            _buildTextField('First Name', Icons.check_circle),
            const SizedBox(height: 16),
            _buildTextField('Last Name', Icons.check_circle),
            const SizedBox(height: 16),
            _buildTextField('@john_doe', Icons.check_circle),
            const SizedBox(height: 16),
            _buildTextField('johndoe@gmail.com', Icons.check_circle),
            const SizedBox(height: 16),
            _buildTextField('**********', Icons.visibility_off, obscureText: true),
            const SizedBox(height: 16),
            _buildTextField('**********', Icons.check_circle, obscureText: true),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (newValue) {},
                  checkColor: Colors.white,
                  activeColor: const Color(0xFF00FF6A),
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'By signing up you accept the ',
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Term of Service ',
                          style: TextStyle(color: Colors.green),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Sign Up logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00FF6A),
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Go back to Sign In
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // TextField Widget
  Widget _buildTextField(String hintText, IconData icon, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF2B2D3B),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white38),
        suffixIcon: Icon(icon, color: const Color(0xFF00FF6A)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
