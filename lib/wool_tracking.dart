import 'package:flutter/material.dart';

class WoolTracker extends StatefulWidget {
  const WoolTracker({Key? key}) : super(key: key);

  @override
  State<WoolTracker> createState() => _WoolTrackerState();
}

class _WoolTrackerState extends State<WoolTracker> {
  late int _currentIndex = 1;
  List<Map<String, String>> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wool Tracking"),
        centerTitle: true,
        backgroundColor: Color(0xFFe9dbFF),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
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
                    StepperComponent(
                      onTap: () {
                        _updateData("Chennai", "Warehouse 1");
                      },
                      index: 1,
                      currentIndex: _currentIndex,
                      city: "Chennai",
                      werehouse: "Warehouse 1",
                    ),
                    StepperComponent(
                      onTap: () {
                        _updateData("Bangalore", "Warehouse 2");
                      },
                      index: 2,
                      currentIndex: _currentIndex,
                      city: "Bangalore",
                      werehouse: "Warehouse 2",
                    ),
                    StepperComponent(
                      onTap: () {
                        _updateData("Mumbai", "Warehouse 3");
                      },
                      index: 3,
                      currentIndex: _currentIndex,
                      city: "Mumbai",
                      werehouse: "Warehouse 3",
                    ),
                    StepperComponent(
                      onTap: () {
                        _updateData("Jaipur", "Warehouse 4");
                      },
                      index: 4,
                      currentIndex: _currentIndex,
                      city: "Jaipur",
                      werehouse: "Warehouse 4",
                    ),
                    StepperComponent(
                      onTap: () {
                        _updateData("Delhi", "Warehouse 5");
                      },
                      index: 5,
                      currentIndex: _currentIndex,
                      city: "Delhi",
                      werehouse: "Warehouse 5",
                      isLast: true,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: 40, right: 40),
                child: TabelData(data: data),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateData(String city, String warehouse) {
    final Map<String, String> newData = {
      "id": "ID${data.length + 1}",
      "city": city,
      "warehouse": warehouse,
    };

    if (data.isEmpty || data.last["city"] != city) {
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
         if (_currentIndex < 5) {
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
  final String city;
  final String werehouse;
  final VoidCallback onTap;

  StepperComponent({
    Key? key,
    required this.currentIndex,
    required this.city,
    required this.onTap,
    required this.index,
    required this.werehouse,
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
                city,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(werehouse, style: TextStyle(fontSize: 10)),
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
                  city,
                  style: TextStyle(fontSize: 12),
                ),
                Text(werehouse, style: TextStyle(fontSize: 10)),
              ],
            ),
          );
  }
}

class TabelData extends StatelessWidget {
  final List<Map<String, String>> data;

  TabelData({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("Wool ID")),
        DataColumn(label: Text("City")),
        DataColumn(label: Text("WareHouse")),
        DataColumn(label: Text("Arrive Time")),
        DataColumn(label: Text("Departure Time")),
      ],
      rows: List<DataRow>.generate(
        data.length,
        (index) => DataRow(
          cells: [
            DataCell(Text(data[index]["id"] ?? "")),
            DataCell(Text(data[index]["city"] ?? "")),
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
