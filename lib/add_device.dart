import 'package:flutter/material.dart';
import 'package:farmx_iot/services/auth.dart';

class AddDevicePage extends StatelessWidget {
  const AddDevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: Text(user?.uid ?? 'Guest')),
      body: PageView(
        children: [
          Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('assets/step1.png')),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Click the reset button using a pin for 5 sec",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('assets/step2.png')),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Turn on bluetooth and connect to wifi",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 38, 237, 214),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('assets/step3.png')),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Enter the credentials to broadcast in next page",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(40),
                        child: Image(image: AssetImage('assets/wifilogo.png'))),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your wifi ssid',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your wifi password',
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("send credentials"))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
