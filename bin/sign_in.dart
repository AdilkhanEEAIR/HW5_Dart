import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 102),
              const Text(
                "Sign In",
                style: TextStyle(
                  fontFamily: 'Imprima',
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                "EMAIL OR PHONE",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(43, 76, 89, 1),
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Loremipsum@gmail.com",
                  hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromRGBO(161, 161, 161, 1),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(229, 229, 229, 1),
                      width: 2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(229, 229, 229, 1),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "PASSWORD",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(43, 76, 89, 1),
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: "••••••••",
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromRGBO(161, 161, 161, 1),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(229, 229, 229, 1),
                      width: 2,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(229, 229, 229, 1),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Forgot password?",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(43, 76, 89, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Imprima',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 17),
              const Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 17),
              socialButton("Continue With Google", "assets/images/google.png"),
              const SizedBox(height: 17),
              socialButton("Continue With Facebook", "assets/images/facebook.png"),
              const SizedBox(height: 51),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Don’t Have an account yet?",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 13,
                      color: Color.fromRGBO(252, 194, 27, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton(String text, String iconPath) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 45),
          Image.asset(
            iconPath,
            width: 31,
            height: 31,
          ),
          const SizedBox(width: 25),
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Imprima',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
