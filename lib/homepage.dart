import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer_library.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ReceiptController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
        title: Text("Bluetooth Printer"),
      ),
      body: Receipt(
        /// You can build your receipt widget that will be printed to the device
        /// Note that, this feature is in experimental, you should make sure your widgets will be fit on every device.
        builder:
            (context) => Column(
              children: [
                Text('Hello World'),
                SizedBox(height: 5),
                Text('Address, place', style: TextStyle(fontSize: 12)),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(child: Text("sl", style: TextStyle(fontSize: 12))),
                    Expanded(
                      child: Text("product", style: TextStyle(fontSize: 12)),
                      flex: 3,
                    ),
                    Expanded(
                      child: Text("rate", style: TextStyle(fontSize: 12)),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("total", style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                Divider(),

                Row(
                  children: [
                    Expanded(child: Text("1", style: TextStyle(fontSize: 12))),
                    Expanded(
                      child: Text("Bread", style: TextStyle(fontSize: 12)),
                      flex: 3,
                    ),
                    Expanded(
                      child: Text("50", style: TextStyle(fontSize: 12)),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("50", style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(child: Text("2", style: TextStyle(fontSize: 12))),
                    Expanded(
                      child: Text(
                        "PeanutButter",
                        style: TextStyle(fontSize: 12),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Text("200", style: TextStyle(fontSize: 12)),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("200", style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Total :',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Expanded(
                      child: Text("250", style: TextStyle(fontSize: 15)),
                    ),
                  ],
                ),
              ],
            ),
        onInitialized: (controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
