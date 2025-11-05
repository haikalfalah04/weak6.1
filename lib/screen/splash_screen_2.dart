import 'package:flutter/material.dart';
import 'package:splash_screen/screen/splash_screen_3.dart';

class MySplashScreen2 extends StatelessWidget {
  const MySplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
        children: [
          SizedBox(height: 50),
          Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage("assets/images/image1.jpeg"),
                    fit: BoxFit.cover,
                  ),
            ),
          ),
          const SizedBox(height: 20),

              // 🔹 Judul
              const Text(
                "Welcome 2",
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // 🔹 Subtitle 2 baris
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Forgot to bring your wallet when you are shopping?\nDon’t worry, we’ve got you covered!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // 🔹 3 Bullet Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFedede9), // aktif
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF84a98c), // non-aktif
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFedede9), // non-aktif
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // 🔹 Tombol Continue
              SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 11, 231, 59),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => MySplashScreen3()),
                      );
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 70),

        ],
      ),
        ),
      ),
    );
  }
}