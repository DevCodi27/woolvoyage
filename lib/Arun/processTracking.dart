import 'package:flutter/material.dart';

void main() {
  runApp(ProcessTracker());
}

class ProcessTracker extends StatefulWidget {
  const ProcessTracker({Key? key}) : super(key: key);

  @override
  State<ProcessTracker> createState() => _ProcessTrackerState();
}

class _ProcessTrackerState extends State<ProcessTracker> {
  late int _currentIndex = 1;
  List<Map<String, String>> data = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Process Tracking",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFe9dbFF),
        ),
        body: Column(
          children: [
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
                            SubProcessStepper(
                              onTap: () {
                                _updateData("Process", "Wool Process");
                              },
                              currentIndex: _currentIndex,
                            ),
                            OrderStepComponent(
                              onTap: () {
                                _updateData("Package", "Wool Packaged");
                              },
                              index: 6,
                              currentIndex: _currentIndex,
                              step: "Package",
                              isLast: false,
                            ),
                            OrderStepComponent(
                              onTap: () {
                                _updateData("Dispatched", "Wool Dispatched");
                                _showDeliveredMessage();
                              },
                              index: 7,
                              currentIndex: _currentIndex,
                              step: "Dispatch",
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
          content: Text("The Wool is Delivered"),
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
  final VoidCallback onTap;

  OrderStepComponent({
    Key? key,
    required this.currentIndex,
    required this.step,
    required this.onTap,
    required this.index,
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
                                  : const Color(0xFFe9dbFF)),
                        ),
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

class SubProcessStepper extends StatelessWidget {
  final int currentIndex;
  final VoidCallback onTap;

  SubProcessStepper({Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i <= 11; i++)
          OrderStepComponent(
            onTap: () {
              onTap();
            },
            index: i,
            currentIndex: currentIndex,
            step: _getSubStepLabel(i),
            isLast: i == 11,
          ),
      ],
    );
  }

  String _getSubStepLabel(int subStepIndex) {
    switch (subStepIndex) {
      case 1:
        return "Shearing";
      case 2:
        return "Grading and Sorting";
      case 3:
        return "Cleaning and Scour";
      case 4:
        return "Carbonization of Wool";
      case 5:
        return "Bleaching";
      case 6:
        return "Carding";
      case 7:
        return "Drafting and Doubling";
      case 8:
        return "Gilling";
      case 9:
        return "Spinning";
      case 10:
        return "Weaving";
      case 11:
        return "Finished Fabric";
      default:
        return "Step $subStepIndex";
    }
  }
}
