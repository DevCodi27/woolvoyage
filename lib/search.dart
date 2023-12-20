import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Search(),
    ),
  );
}

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wool Search'),
        backgroundColor: const Color(0xFFe9dbff),
      ),
      body: SearchBale(),
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
    );
  }
}

class SearchBale extends StatefulWidget {
  @override
  _SearchBaleState createState() => _SearchBaleState();
}

class _SearchBaleState extends State<SearchBale> {
  String? _selectedBreed;
  String? _selectedColor;
  String? _selectedGrading;
  TextEditingController fiberFitnessController = TextEditingController();

  final List<WoolInfo> _woolList = [
    WoolInfo('1', 'Location 1', 'Merino', 'White', 'A', '0.5'),
    WoolInfo('2', 'Location 2', 'Chokla', 'Light Brown', 'B', '1.0'),
    WoolInfo('3', 'Location 3', 'Pashmina', 'Brown', 'C', '1.5'),
    WoolInfo('4', 'Location 4', 'Bharat Merino', 'Grey', 'D', '2.0'),
  ];
  List<WoolInfo> _searchedResult = [];

  void _search() {
    _searchedResult = _woolList.where((wool) {
      bool breedMatch = _selectedBreed == null || wool.breed == _selectedBreed;
      bool colorMatch = _selectedColor == null || wool.color == _selectedColor;
      bool gradingMatch =
          _selectedGrading == null || wool.grading == _selectedGrading;
      bool fitnessMatch = fiberFitnessController.text.isEmpty ||
          double.parse(fiberFitnessController.text) ==
              double.parse(wool.fiberFitness);

      return breedMatch && colorMatch && gradingMatch && fitnessMatch;
    }).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets\\Backgroung sheep.jpg'), 
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _buildDropdown(
                ['Merino', 'Chokla', 'Pashmina', 'Bharat Merino'],
                'Breed',
                _selectedBreed,
                (value) {
                  setState(() {
                    _selectedBreed = value!;
                  });
                },
              ),
              _buildDropdown(
                ['White', 'Light Brown', 'Brown', 'Grey'],
                'Color',
                _selectedColor,
                (value) {
                  setState(() {
                    _selectedColor = value!;
                  });
                },
              ),
              _buildDropdown(
                ['A', 'B', 'C', 'D'],
                'Grading Score',
                _selectedGrading,
                (value) {
                  setState(() {
                    _selectedGrading = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: fiberFitnessController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Fibre Fitness',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  onSubmitted: (value) {
                    _search();
                  },
                ),
              ),
              ElevatedButton(
                onPressed: _search,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 177, 175, 175),
                  foregroundColor: Colors.black,
                ),
                child: const Text('Search'),
              ),
              const SizedBox(height: 16),
              _buildSearchResult(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(List<String> items, String labelText, String? value,
      void Function(String?) onChanged) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 2.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        value: value,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildSearchResult() {
    if (_searchedResult.isEmpty) {
      return const Text('No results found.');
    } else {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Wool ID')),
            DataColumn(label: Text('Location')),
            DataColumn(label: Text('Price')), // Add additional columns as needed
            DataColumn(label: Text('Zone')),
            DataColumn(label: Text('Grading Score')),
            DataColumn(label: Text('Colour')),
            DataColumn(label: Text('Breed')),
          ],
          rows: _searchedResult.map((wool) {
            return DataRow(cells: [
              DataCell(Text(wool.id)),
              DataCell(Text(wool.location)),
              const DataCell(Text('Price')), // Replace 'Price' with the actual value
              const DataCell(Text('Zone')), // Replace 'Zone' with the actual value
              DataCell(Text(wool.grading)),
              DataCell(Text(wool.color)),
              DataCell(Text(wool.breed)),
            ]);
          }).toList(),
        ),
      );
    }
  }
}

class WoolInfo {
  final String id;
  final String location;
  final String breed;
  final String color;
  final String grading;
  final String fiberFitness;

  WoolInfo(
    this.id,
    this.location,
    this.breed,
    this.color,
    this.grading,
    this.fiberFitness,
  );
}