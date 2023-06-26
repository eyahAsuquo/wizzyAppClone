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
Dark-2 0xFF212246
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
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      child: const Text(
                        'Market',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Container(
                  width: 200,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(162, 124, 207, 245),
                      ),
                      Text(
                        'USD',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'BTC',
                        style: TextStyle(
                          color: Color.fromARGB(162, 124, 207, 245),
                        ),
                      ),
                      Text(
                        'ETH',
                        style: TextStyle(
                          color: Color.fromARGB(162, 124, 207, 245),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(162, 124, 207, 245),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(162, 124, 207, 245),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Crypto',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/logos_bitcoin.png',
                  titletext: 'Bitcoin',
                  subtitletext: 'BTC.USD',
                  text: '29,732.54'),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/logos_eth.png',
                  titletext: 'Ethereum',
                  subtitletext: 'ETH.USD',
                  text: '1,998.34'),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/cryptocurrency_xrp.png',
                  titletext: 'XRP',
                  subtitletext: 'XRP.USD',
                  text: '0.4158'),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/cryptocurrency_eos.png',
                  titletext: 'EOS',
                  subtitletext: 'EOS.USD',
                  text: '1.34'),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/logos_bnb.png',
                  titletext: 'BNB',
                  subtitletext: 'BNB.USD',
                  text: '315.78'),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/image2.png',
                  titletext: 'Solana',
                  subtitletext: 'SOL.USD',
                  text: '51.70'),
            ),
            SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CardWidget(
                  leadingimage: 'assets/images/cryptocurrency_eos.png',
                  titletext: 'EOS',
                  subtitletext: 'EOS.USD',
                  text: '1.34'),
            ),
            SizedBox(height: 5),
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
                          color: Color.fromARGB(55, 47, 50, 146),
                        ),
                        child: Image(
                          color: Color.fromARGB(179, 92, 96, 224),
                          image: AssetImage('assets/images/Home.png'),
                        ),
                      ),
                      Text(
                        'Home',
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
                          color: Colors.blue,
                        ),
                        child: Image(
                          // color: Colors.blue,
                          image: AssetImage('assets/images/Presentation.png'),
                        ),
                      ),
                      Text(
                        'Market',
                        style: TextStyle(
                          color: Colors.white,
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

class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.leadingimage,
    required this.titletext,
    required this.subtitletext,
    required this.text,
    super.key,
  });
  final String leadingimage;
  final String titletext;
  final String subtitletext;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color.fromARGB(214, 1, 59, 87),
      child: ListTile(
        horizontalTitleGap: 10.0,
        minLeadingWidth: 5.0,
        leading: Image(
          image: AssetImage(leadingimage),
        ),
        title: Text(
          titletext,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          subtitletext,
          style: const TextStyle(
            color: Color.fromARGB(162, 124, 207, 245),
            fontSize: 12,
          ),
        ),
        trailing: Container(
          width: 200,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(
                image: AssetImage('assets/images/Mask_group.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  Container(
                    child: const Row(children: [
                      Image(
                        image: AssetImage('assets/images/Polygon1.png'),
                      ),
                      Text(
                        '16.38%',
                        style: TextStyle(
                          color: Color(0xFF7BFFB2),
                          fontSize: 12,
                        ),
                      )
                    ]),
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
