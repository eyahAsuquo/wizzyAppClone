import 'package:flutter/material.dart';

void main() {
  return runApp(const WizzyApp());
}

class WizzyApp extends StatelessWidget {
  const WizzyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wizzy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

/*
background color 0xFF212246
Blue Color 0xFF0695FF

*/
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212246),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: Container(
                width: 400,
                height: 80,
                child: ListTile(
                  leading: const Image(
                    image: AssetImage('assets/images/Ellipse1.png'),
                  ),
                  title: const Text(
                    'Hi MIchael',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  subtitle: const Text(
                    'Welcome to Wizzy',
                    style: TextStyle(color: Colors.white60, fontSize: 15),
                  ),
                  trailing: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(146, 47, 51, 146),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notification_important_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 170,
              width: 380,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: const Color(0xFF0695FF),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Balance',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                      const Text(
                        '4,562.52',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 25),
                      ),
                      const Text(
                        'Monthly Profit',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '+ 1,265.2',
                            style: TextStyle(
                              color: Color(0xFF7BFFB2),
                            ),
                          ),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromARGB(113, 123, 255, 178),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/Polygon1.png'),
                                SizedBox(width: 5.0),
                                const Text(
                                  '+28',
                                  style: TextStyle(
                                      color: Color(0xFF7BFFB2),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SecondRow(
                    assetimage: 'assets/images/Card.png', text: 'Deposit'),
                SecondRow(
                    assetimage: 'assets/images/Dollar.png', text: 'Withdrawal'),
                SecondRow(
                    assetimage: 'assets/images/Send.png', text: 'Transfer'),
                SecondRow(
                    assetimage: 'assets/images/Presentation.png',
                    text: 'Exchange'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'My Portfolio',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  ThirdRow(
                      imageassets1: 'assets/images/logos_bitcoin.png',
                      titletext1: 'BitCoin',
                      subtitletext1: 'BTC/USD',
                      imageassets2: 'assets/images/Vector1.png',
                      titletext2: '29,732.52',
                      imageassets3: 'assets/images/Polygon1.png',
                      titletext3: '16.38%'),
                  const SizedBox(width: 15),
                  ThirdRow(
                      imageassets1: 'assets/images/logos_eth.png',
                      titletext1: 'Ethereum',
                      subtitletext1: 'ETH/USD',
                      imageassets2: 'assets/images/Vector1.png',
                      titletext2: '1,998.70',
                      imageassets3: 'assets/images/Polygon1.png',
                      titletext3: '16.38%'),
                  const SizedBox(width: 15),
                  ThirdRow(
                      imageassets1: 'assets/images/logos_bnb.png',
                      titletext1: 'BNB',
                      subtitletext1: 'BNB/USD',
                      imageassets2: 'assets/images/Vector1.png',
                      titletext2: '315.78',
                      imageassets3: 'assets/images/Polygon1.png',
                      titletext3: '16.38%'),
                ],
              ),
            ),
            const SizedBox(width: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'News',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/images/Rectangle5.png'),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Global CoinMarketCap Conference!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.white10, width: 2.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 8.0),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: Image(
                          image: AssetImage('assets/images/Home.png'),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 8.0),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(55, 47, 50, 146),
                        ),
                        child: Image(
                          color: Color.fromARGB(179, 92, 96, 224),
                          image: AssetImage('assets/images/Presentation.png'),
                        ),
                      ),
                      Text(
                        'Market',
                        style: TextStyle(
                          color: Color.fromARGB(179, 92, 96, 224),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 8.0),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(55, 47, 50, 146),
                        ),
                        child: Image(
                          color: Color.fromARGB(179, 92, 96, 224),
                          image: AssetImage('assets/images/Vector.png'),
                        ),
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          color: Color.fromARGB(179, 92, 96, 224),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 8.0),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(55, 47, 50, 146),
                        ),
                        child: Image(
                          // color: Color.fromARGB(179, 92, 96, 224),
                          image: AssetImage('assets/images/Chart.png'),
                        ),
                      ),
                      Text(
                        'Portofolio',
                        style: TextStyle(
                          color: Color.fromARGB(179, 92, 96, 224),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRow extends StatelessWidget {
  ThirdRow({
    super.key,
    required this.imageassets1,
    required this.titletext1,
    required this.subtitletext1,
    required this.imageassets2,
    required this.titletext2,
    required this.imageassets3,
    required this.titletext3,
  });

  final String imageassets1;
  final String titletext1;
  final String subtitletext1;

  final String imageassets2;
  final String titletext2;

  final String imageassets3;
  final String titletext3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(146, 47, 51, 146),
      ),
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              horizontalTitleGap: 10.0,
              minVerticalPadding: 5.0,
              leading: Image(
                image: AssetImage(imageassets1),
              ),
              title: Text(
                titletext1,
                style: const TextStyle(color: Colors.white60, fontSize: 12),
              ),
              subtitle: Text(
                subtitletext1,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Image(
              image: AssetImage(imageassets2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  titletext2,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(imageassets3),
                      ),
                      Text(
                        titletext3,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRow extends StatelessWidget {
  const SecondRow({
    super.key,
    required this.assetimage,
    required this.text,
  });
  final String text;
  final String assetimage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(146, 47, 51, 146),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(assetimage),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
