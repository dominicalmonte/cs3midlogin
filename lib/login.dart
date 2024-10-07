import 'package:flutter/material.dart';
import 'signup.dart';
import 'homescreen.dart'; // Import HomeScreen
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F2E),
      body: LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth > 600) {
            return webLayout(context);
          }else{
            return mobileLayout(context);
          }
        }
      )
    );
  }

  Widget mobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          _buildTextField('johndoe@gmail.com', Icons.check_circle),
          const SizedBox(height: 16),
          _buildTextField('**********', Icons.visibility_off, obscureText: true),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (newValue) {},
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF00FF6A),
                  ),
                  const Text('Remember Me', style: TextStyle(color: Colors.white)),
                ],
              ),
              TextButton(
                onPressed: () {
                  // Forgot Password logic here
                },
                child: const Text('Forgot Password?', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Sign In logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00FF6A),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Sign In',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 40),
          // Google Login Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20, // Adjust size of the circle
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    //no logic here
                  },
                  icon: FaIcon(FontAwesomeIcons.facebook)
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20, // Adjust size of the circle
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  icon: FaIcon(FontAwesomeIcons.google)
                ),
              ),
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20, // Adjust size of the circle
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    //no logic here
                  },
                  icon: FaIcon(FontAwesomeIcons.twitter)
                ),
              )
            ]
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? ', style: TextStyle(color: Colors.white)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text('Create new one', style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget webLayout(BuildContext context) {
  return Center(
    child: Container(
      constraints: BoxConstraints(maxWidth: 600), // Set a maximum width for the form
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          _buildTextField('johndoe@gmail.com', Icons.check_circle),
          const SizedBox(height: 16),
          _buildTextField('**********', Icons.visibility_off, obscureText: true),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (newValue) {},
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF00FF6A),
                  ),
                  const Text('Remember Me', style: TextStyle(color: Colors.white)),
                ],
              ),
              TextButton(
                onPressed: () {
                  // Forgot Password logic here
                },
                child: const Text('Forgot Password?', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Sign In logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00FF6A),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Sign In',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          // Google Login Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20, // Adjust size of the circle
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    //no logic here
                  },
                  icon: FaIcon(FontAwesomeIcons.facebook)
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20, // Adjust size of the circle
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  icon: FaIcon(FontAwesomeIcons.google)
                ),
              ),
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 20, // Adjust size of the circle
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    //no logic here
                  },
                  icon: FaIcon(FontAwesomeIcons.twitter)
                ),
              )
            ]
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account? ', style: TextStyle(color: Colors.white)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text('Create new one', style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


  Widget _buildTextField(String hintText, IconData icon, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF2B2D3B),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white38),
        suffixIcon: Icon(icon, color: Color(0xFF00FF6A)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
