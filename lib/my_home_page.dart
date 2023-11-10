import 'package:flutter/material.dart';
import 'package:payment_ui/started_page.dart';
import 'package:payment_ui/utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: screenWidth(context),
      height: screenHeigth(context),
      padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 136, 52, 182), Color(0xffBD82B2)])),
      child: Stack(
        children: [
          SafeArea(
              child: switch (selectedIndex) {
            0 => Stack(
                children: [
                  Positioned(
                    top: 240,
                    left: 170,
                    child: Transform.rotate(
                        angle: 1.2,
                        child: Transform.scale(
                          scale: 1.3,
                          child: myCard(),
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.qr_code_scanner,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "\$ 42,530,00",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.visibility_off,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 90,
                        height: 410,
                        child: Column(
                          children: [
                            Container(
                              height: 90,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(90)),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90)),
                                child: const Center(
                                  child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.arrow_outward,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Receive",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 90,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(90)),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90)),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_outward,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Send",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 90,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white.withOpacity(.2),
                                  ),
                                  borderRadius: BorderRadius.circular(90)),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90)),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Add to cart",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            1 => SizedBox(
                width: screenWidth(context),
                height: screenHeigth(context),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "History",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Center(
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 170,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Center(
                                child: Text("Receive",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "\$ 2,520,00",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.visibility_off,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "1 week",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Icon(Icons.keyboard_arrow_down_sharp,
                                  color: Colors.white)
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child:
                                      const Center(child: Icon(Icons.folder)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.browse_gallery,
                                    color: Colors.white,
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: screenWidth(context),
                          height: 220,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$ 1K",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 800",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 500",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 200",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 80",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$ 0",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              graphicFild(day: "Mon", value: 40),
                              graphicFild(day: "Tue", value: 80),
                              graphicFild(day: "Wed", value: 120),
                              graphicFild(day: "Thu", value: 30),
                              graphicFild(day: "Fri", value: 70),
                              graphicFild(day: "Sat", value: 150),
                              graphicFild(day: "Sun", value: 100),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Activity",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                          Spacer(),
                          Icon(
                            Icons.list,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      activityCard(),
                      const SizedBox(
                        height: 10,
                      ),
                      activityCard(),
                      const SizedBox(
                        height: 10,
                      ),
                      activityCard(),
                      const SizedBox(
                        height: 140,
                      )
                    ],
                  ),
                ),
              ),
            2 => SizedBox(
                width: screenWidth(context),
                height: screenHeigth(context),
                child: Center(
                  child: Column(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StartedPage(),
                              ));
                        },
                        child: const CircleAvatar(
                            radius: 80,
                            child: Icon(
                              Icons.logout,
                              size: 80,
                              color: Colors.black,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Sair",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            int() => widget,
          }),
          Positioned(
              child: SizedBox(
            child: Column(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: MyAnimatedBar(
                    onTap: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }

  activityCard() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: screenWidth(context),
        height: 60,
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(.2)),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 2, color: Colors.white.withOpacity(.4))),
              child: const Center(
                child: Icon(
                  Icons.balance,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "International Payment",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "Monthly Dribbble Pro",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "-\$90",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "Yesterday",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

graphicFild({required String day, required double value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Spacer(),
      Container(
        width: 27.3,
        height: value,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        day,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}

class MyAnimatedBar extends StatefulWidget {
  const MyAnimatedBar({super.key, required this.onTap});

  final Function(int value) onTap;

  @override
  State<MyAnimatedBar> createState() => _MyAnimatedBarState();
}

class _MyAnimatedBarState extends State<MyAnimatedBar> {
  int selectdButton = 0;

  List<IconData> itens = [
    Icons.home,
    Icons.wallet,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(60)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  itens.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectdButton = index;
                          });
                          widget.onTap(index);
                        },
                        child: CircleAvatar(
                          backgroundColor: index == selectdButton
                              ? Colors.black
                              : Colors.white,
                          child: Icon(itens[index],
                              color: index == selectdButton
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                      )),
            ),
          ),
        ),
      ),
    );
  }
}
