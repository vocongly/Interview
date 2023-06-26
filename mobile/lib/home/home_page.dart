import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<String> jokes = [
    "These are based on shared cultural knowledge, which makes them hard to understand. Here’s an example.\nDoctor, I can’t stop singing The Green Green Grass of Home.\nHe says “That sounds like Tom Jones syndrome.”\n“Is it common?” I asked.\n“It’s not unusual” he replied.",
    "These always start “How many (type of person) does it take to change a lightbulb?” Here’s my all-time favourite:\n“How many members of the Socialist Workers’ Party does it take to change a lightbulb?”\n“About a million. One out, all out.”",
    "A woman gets on a bus with her baby. The driver says “Ugh – that’s the ugliest baby I’ve ever seen!”\nThe woman walks to the back of the bus and sits down.\nShe says to the man next to her: “The driver just insulted me!”\nThe man says: “You go up there and tell him off. Go on. I’ll hold your monkey for you.”"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            _buildTitle(),
            _buildBody(),
            _buidBottom()
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Expanded(
      child: Column(
        children: [
          Expanded(
              flex: 7,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(32),
                child: index == -1
                    ? const Text(
                        "That's all the jokes for today! Come back another day!")
                    : Text(jokes[index]),
              ))),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton(
                    onTap: () {
                      if (index == -1) {
                        return;
                      }
                      if (index == jokes.length - 1) {
                        setState(() {
                          index = -1;
                        });
                      } else {
                        setState(() {
                          index++;
                        });
                      }
                    },
                    title: "This is Funny!",
                    color: const Color(0xff2c7edb)),
                _buildButton(
                    onTap: () {
                      if (index == -1) {
                        return;
                      }
                      if (index == jokes.length - 1) {
                        setState(() {
                          index = -1;
                        });
                      } else {
                        setState(() {
                          index++;
                        });
                      }
                    },
                    title: "This is not funny!",
                    color: const Color(0xff29b363)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buidBottom() {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'This appis created as part of Hlsolution program. The material contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accury of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.grey),
          ),
          Text('Copyright 2021 HLS')
        ],
      ),
    );
  }

  Widget _buildButton(
      {required VoidCallback onTap,
      required String title,
      required Color color}) {
    return TextButton(
        onPressed: onTap,
        child: Container(
            color: color,
            width: 120,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            )));
  }

  Widget _buildTitle() {
    return Container(
      color: const Color(0xff29b363),
      height: 150,
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "A joke a day keeps the doctor away",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "If you joke wrong way, your teeth have to pay. (Serious)",
              style: TextStyle(color: Colors.white),
            ),
          ]),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo_img.png',
            height: 32,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "Handicrafted by",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("Jim HLS")
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/avatar_img.png',
                  height: 32,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
