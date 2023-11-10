import 'package:flutter/material.dart';
import 'package:payment_ui/my_home_page.dart';
import 'package:payment_ui/utils.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation firstCardPosition;
  double secondCardPositiion = -400;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    firstCardPosition = Tween<double>(
      begin: -200,
      end: 406.16727272727275,
    ).animate(animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      animationController.forward().then((value) {
        Future.delayed(const Duration(milliseconds: 400), () {
          if (animationController.isCompleted) {
          setState(() {
            secondCardPositiion = screenHeigth(context) * .4;
          });
        }
        },);
      });
    });
    return Scaffold(
      body: Container(
        width: screenWidth(context),
        height: screenHeigth(context),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 136, 52, 182),
              Color(0xffBD82B2)
            ])),
        child: SafeArea(
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: firstCardPosition,
              
                builder: (context, child) {
                  return AnimatedPositioned(
                    duration: animationController.duration!,
                    bottom: firstCardPosition.value,
                    left: screenWidth(context) * .12,
                    child: child!,
                  );
                },
                child: Transform.scale(
                  scale: .8,
                  child: Transform.rotate(
                    angle: -5.7,
                    child: Opacity(opacity: .4, child: myCard()),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 443),
                bottom: secondCardPositiion,
                left: screenWidth(context) * .08,
                child: Transform.rotate(angle: 5.8, child: myCard()),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Wallet",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  const Text(
                    "Unlock Your Financial\nPotential with us",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Already have an account? Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const MyHomePage();
                          },
                        ));
                      },
                      child: Container(
                        height: 60,
                        width: screenWidth(context),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)),
                        child: const Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}

myCard() {
    return Stack(
      children: [
        Container(
          width: 330,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.circular(18)),
        ),
        Positioned(
          bottom: 10,
          left: 8,
          child: Container(
            width: 312,
            height: 180,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(18)),
            child: const Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Matias Fernando",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    FlutterLogo(),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "3819 2313 0942 7955",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.payment),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }