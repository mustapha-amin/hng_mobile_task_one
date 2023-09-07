import 'package:flutter/material.dart';
import 'package:hng_mobile_task_one/github_profile_screen.dart';
import 'package:hng_mobile_task_one/textstyle.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'asset/images/musty.png',
                  height: size.height * .30,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Mustieyy",
                style: kTextStyle(35, isBold: true),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: size.width * .7,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBD7660),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GithubProfileScreen()));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/images/github.png',
                        height: 35,
                        filterQuality: FilterQuality.high,
                      ),
                      Text(
                        "Open github",
                        style: kTextStyle(22, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
