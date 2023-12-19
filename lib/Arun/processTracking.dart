import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: OrderTracker(),
  ));
}

class OrderTracker extends StatefulWidget {
  const OrderTracker({Key? key}) : super(key: key);

  @override
  State<OrderTracker> createState() => _OrderTrackerState();
}

class _OrderTrackerState extends State<OrderTracker> {
  late int _currentIndex = 1;
  List<Map<String, String>> data = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Order Tracking",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFe9dbFF),
        ),
        body: Column(
          children: [
            const Text(
              "Order Code: 365jyQ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Row(
                          children: [
                            OrderStepComponent(
                              onTap: () {
                                _updateData("Placed", "Order Placed");
                              },
                              index: 1,
                              currentIndex: _currentIndex,
                              step: "Placed",
                              description: "Order Placed",
                            ),
                            OrderStepComponent(
                              onTap: () {
                                _updateData("Packed", "Order Packed");
                              },
                              index: 2,
                              currentIndex: _currentIndex,
                              step: "Packed",
                              description: "Order Packed",
                            ),
                            OrderStepComponent(
                              onTap: () {
                                _updateData("Shipped", "Order Shipped");
                              },
                              index: 3,
                              currentIndex: _currentIndex,
                              step: "Shipped",
                              description: "Order Shipped",
                            ),
                            OrderStepComponent(
                              onTap: () {
                                _updateData("Delivered", "Order Delivered");
                                _showDeliveredMessage();
                              },
                              index: 4,
                              currentIndex: _currentIndex,
                              step: "Delivered",
                              description: "Order Delivered",
                              isLast: true,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 8, left: 40, right: 40),
                        child: OrderTable(data: data),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateData(String step, String description) {
    final Map<String, String> newData = {
      "id": "ID${data.length + 1}",
      "step": step,
      "description": description,
    };

    if (data.isEmpty || data.last["step"] != step) {
      newData["time"] = _getCurrentTime();
      data.add(newData);
    } else {
      if (newData["time"] != null) {
        data.last["time"] = newData["time"]!;
      } else {
        data.last["time"] = _getCurrentTime();
      }
      _setCurrentIndex(_currentIndex + 1);
    }

    setState(() {});
  }

  void _setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    return "${now.hour}:${now.minute}:${now.second}";
  }

  void _showDeliveredMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Order Delivered"),
          content: Column(
            children: const [
              Text("Your order has been delivered."),
              SizedBox(height: 10),
              Text("Thanks for shopping!"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}

class OrderStepComponent extends StatelessWidget {
  final bool isLast;
  final int currentIndex;
  final int index;
  final String step;
  final String description;
  final VoidCallback onTap;

  OrderStepComponent({
    Key? key,
    required this.currentIndex,
    required this.step,
    required this.onTap,
    required this.index,
    required this.description,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index == currentIndex
                            ? Colors.deepPurple
                            : Colors.transparent,
                        border: Border.all(
                            color: index >= currentIndex
                                ? Colors.deepPurple
                                : const Color(0xFFe9dbFF)),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                step,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                description,
                style: const TextStyle(fontSize: 10),
              ),
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: index <= currentIndex
                                ? Colors.deepPurple
                                : Colors.transparent,
                            border: Border.all(
                                color: index >= currentIndex
                                    ? Colors.deepPurple
                                    : const Color(0xFFe9dbFF))),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: currentIndex >= index + 1
                            ? Colors.deepPurple
                            : const Color(0xFFe9dbFF),
                      ),
                    ),
                  ],
                ),
                Text(
                  step,
                  style: const TextStyle(fontSize: 12),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          );
  }
}

class OrderTable extends StatelessWidget {
  final List<Map<String, String>> data;

  OrderTable({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("Step")),
        DataColumn(label: Text("Description")),
        DataColumn(label: Text("Time")),
      ],
      rows: List<DataRow>.generate(
        data.length,
        (index) => DataRow(
          cells: [
            DataCell(Text(data[index]["step"] ?? "")),
            DataCell(Text(data[index]["description"] ?? "")),
            DataCell(Text(data[index]["time"] ?? "")),
          ],
        ),
      ),
    );
  }
}