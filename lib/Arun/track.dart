import 'package:flutter/material.dart';

class WoolTracker extends StatefulWidget {
  const WoolTracker({Key? key}) : super(key: key);

  @override
  State<WoolTracker> createState() => _WoolTrackerState();
}

class _WoolTrackerState extends State<WoolTracker> {
  late int _currentIndex = 1;
  List<Map<String, String>> data = [];

  // List of wool process steps
  final List<String> woolProcessSteps = [
    "Shearing",
    "Grading and Sorting",
    "Cleaning and Scour",
    "Carbonization of Wool",
    "Bleaching",
    "Carding",
    "Drafting AND Doubling",
    "Gilling",
    "Spinning",
    "Weaving",
    "Finished Fabric",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wool Tracking"),
        centerTitle: true,
        backgroundColor: Color(0xFFe9dbFF),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  children: [
                    for (int i = 0; i < woolProcessSteps.length; i++)
                      StepperComponent(
                        onTap: () {
                          _updateData(woolProcessSteps[i], "Warehouse ${i + 1}");
                        },
                        index: i + 1,
                        currentIndex: _currentIndex,
                        step: woolProcessSteps[i],
                        isLast: i == woolProcessSteps.length - 1,
                      ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: 40, right: 40),
                child: TableData(data: data),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateData(String step, String warehouse) {
    final Map<String, String> newData = {
      "id": "ID${data.length + 1}",
      "step": step,
      "warehouse": warehouse,
    };

    if (data.isEmpty || data.last["step"] != step) {
      // First tap, update arrival time
      newData["arriveTime"] = _getCurrentTime();
      data.add(newData);
    } else {
      // Second tap, update departure time
      if (newData["departureTime"] != null) {
        data.last["departureTime"] = newData["departureTime"]!;
      } else {
        data.last["departureTime"] = _getCurrentTime();
      }

      // Check if departure time is updated and move to the next index
      if (data.last["departureTime"] != null) {
        if (_currentIndex < woolProcessSteps.length) {
          // Move to the next index on the third tap
          _setCurrentIndex(_currentIndex + 1);
        }
      }
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
}

class StepperComponent extends StatelessWidget {
  final bool isLast;
  final int currentIndex;
  final int index;
  final String step;
  final VoidCallback onTap;

  StepperComponent({
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
                                : Color(0xFFe9dbFF)),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                step,
                style: TextStyle(
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
                                    : Color(0xFFe9dbFF))),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: currentIndex >= index + 1
                            ? Colors.deepPurple
                            : Color(0xFFe9dbFF),
                      ),
                    ),
                  ],
                ),
                Text(
                  step,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
  }
}

class TableData extends StatelessWidget {
  final List<Map<String, String>> data;

  TableData({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("Wool ID")),
        DataColumn(label: Text("Step")),
        DataColumn(label: Text("Warehouse")),
        DataColumn(label: Text("Processes Start")),
        DataColumn(label: Text("Processes End")),
      ],
      rows: List<DataRow>.generate(
        data.length,
        (index) => DataRow(
          cells: [
            DataCell(Text(data[index]["id"] ?? "")),
            DataCell(Text(data[index]["step"] ?? "")),
            DataCell(Text(data[index]["warehouse"] ?? "")),
            DataCell(Text(data[index]["arriveTime"] ?? "")),
            DataCell(Text(data[index]["departureTime"] ?? "")),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: WoolTracker(),
  ));
}
