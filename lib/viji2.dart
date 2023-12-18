import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class buttonpage extends StatelessWidget {
  const buttonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.dstATop,
                ),
              ),
            ),
          ),
          Center(
              child: GridView.count(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const angorowool()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Knitting wool'),
              ),
              Container(
                child: Image.asset('assets/knittingwool.jpg'),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MERINOwool()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Merino Wool'),
              ),
              Image.asset('assets/greasywool.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => rawsheep()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Center(child: Text('Raw Sheep Wool')),
              ),
              Image.asset('assets/sheepwool.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wollenshawls()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Wollen Shawls'),
              ),
              Image.asset('assets/shal.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => woolenfibers()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Wool Fibers'),
              ),
              Image.asset('assets/woolfibre.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wooltops()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Wool Tops'),
              ),
              Image.asset('assets/wooLtopas.jpg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => yarn()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Yarn'),
              ),
              Image.asset('assets/yarn.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => greasywool()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Greasy wool'),
              ),
              Image.asset('assets/greasywool.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sheepwool()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Sheep wool'),
              ),
              Image.asset('assets/sheepwool.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => washedwool()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Washed wool'),
              ),
              Image.asset('assets/washedwool.jpeg'),
            ],
          ))
        ],
      ),
    );
  }
}

//angoro wool
class angorowool extends StatefulWidget {
  const angorowool({super.key});

  @override
  State<angorowool> createState() => _angorowoolState();
}

class _angorowoolState extends State<angorowool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Plain Natural Baby wool,For knitting',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                'Rs. 30/piece',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Usage/Application:Knitting',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Color:Natural',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Pattern Plain',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Material :Polyester',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Packing Type:Roll',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              )
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/angorowool.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class washedwool extends StatefulWidget {
  const washedwool({super.key});

  @override
  State<washedwool> createState() => _washedwoolState();
}

class _washedwoolState extends State<washedwool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Plain Natural Baby wool,For knitting',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                'Rs. 30/piece',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Usage/Application:Knitting',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Color:Natural',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Pattern Plain',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Material :Polyester',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Packing Type:Roll',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              )
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/angorowool.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class sheepwool extends StatefulWidget {
  const sheepwool({super.key});

  @override
  State<sheepwool> createState() => _sheepwoolState();
}

class _sheepwoolState extends State<sheepwool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'multycolour New Zealand Wool, For Carpet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 300/ Kg',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Size: any size',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Color: multycolour',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Carpet Style: for carpet',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                '5 kg: 5kg',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Packing Type:Roll',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              )
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/sheepwool.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class rawsheep extends StatefulWidget {
  const rawsheep({super.key});

  @override
  State<rawsheep> createState() => _rawsheepState();
}

class _rawsheepState extends State<rawsheep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Raw Wool ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 250/ Kilogram',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Color As per demand',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Usage Embroidery knitting weaving , textile industry',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Packaging Type CUSTOMIZED',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Length 2-6 inches',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              //
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/sheepwool.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class wollenshawls extends StatefulWidget {
  const wollenshawls({super.key});

  @override
  State<wollenshawls> createState() => _wollenshawlsState();
}

class _wollenshawlsState extends State<wollenshawls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Women Ladies Embroidered Wool',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 550',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Pattern: Embroidered',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Gender: Women',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Fabric: Wool',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Brand: Hang N Hold',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              //
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/shal.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class woolenfibers extends StatefulWidget {
  const woolenfibers({super.key});

  @override
  State<woolenfibers> createState() => _woolenfibersState();
}

class _woolenfibersState extends State<woolenfibers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'ROCK WOOL FIBER, For RoofingROCK WOOL FIBER, For Roofing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 120/ Square Meter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                'Thickness: 100 mm',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Material: FIBER',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Usage/Application: Roofing',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Packaging Type Bulk',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Moisture 13.75%',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              //
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/woolfibre.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class wooltops extends StatefulWidget {
  const wooltops({super.key});

  @override
  State<wooltops> createState() => _wooltopsState();
}

class _wooltopsState extends State<wooltops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Female Gray T-39 Woolen Fancy Top Female Gray T-39 Woolen Fancy Top',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 675/piece',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Color: Gray',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Size: S, M, L, Free Size',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Gender: Female',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Brand: White Flower',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              //
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/wooltopas.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}
//meerino wool

class MERINOwool extends StatefulWidget {
  const MERINOwool({super.key});

  @override
  State<MERINOwool> createState() => _MERINOwoolState();
}

class _MERINOwoolState extends State<MERINOwool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Merino Wool Top',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 400/ Kg',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Color :All',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Material:100% marino wool',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/merinowool.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}
//meerino wool

class greasywool extends StatefulWidget {
  const greasywool({super.key});

  @override
  State<greasywool> createState() => _greasywoolState();
}

class _greasywoolState extends State<greasywool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Greasy Wool, For Scouring',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                'Usage:SCOURING',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Material:100% marino wool',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/greasywool.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

class yarn extends StatefulWidget {
  const yarn({super.key});

  @override
  State<yarn> createState() => _yarnState();
}

class _yarnState extends State<yarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9dbff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Change to MainAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Add some space at the top
              Text(
                'Wool Super Chunky Yarn',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 17, 63, 100),
                ),
              ),
              Text(
                '₹ 129/ Piece',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Fabric: Polyester',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Usage/Application: Knitting',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'No. Of Ply: 1 Ply',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Pattern: Dyed',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
              Text(
                'Color: Mint',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  // color: Colors.black
                ),
              ),
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/greasywool.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment
          .bottomCenter, // Align the image to the bottom of the container
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),

          // backgroundColor: co,
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Buy now",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buy()),
          );
        },
      ),
    );
  }
}

// class greasywool extends StatefulWidget {
//   const greasywool({super.key});

//   @override
//   State<greasywool> createState() => _greasywoolState();
// }

// class _greasywoolState extends State<greasywool> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffe9dbff),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               Center(
//                 child: Container(
//                   height: 547,
//                   alignment: Alignment.bottomCenter,
//                   child: _bannerCard(),
//                 ),
//               ),
//               Center(child: _imgBanner()),
//             ],
//           ),
//           SizedBox(height: 30)
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: _finalButton(context),
//     );
//   }

//   Widget _bannerCard() => Container(
//         height: 300,
//         width: 340,
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(40),
//           ),
//           elevation: 10,
//           child: Column(
//             mainAxisAlignment:
//                 MainAxisAlignment.center, // Change to MainAxisAlignment.start
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 20), // Add some space at the top
//               Text(
//                 'Greasy Wool, For Scouring',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   color: Color.fromARGB(255, 17, 63, 100),
//                 ),
//               ),
//               Text(
//                 'Usage:SCOURING',
//                 textAlign: TextAlign.start,
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               Text(
//                 '',
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(
//                   // fontWeight: FontWeight.bold,
//                   fontSize: 15,
//                   // color: Colors.black
//                 ),
//               ),
//               Text(
//                 'Material:100% marino wool',
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(
//                   // fontWeight: FontWeight.bold,
//                   fontSize: 15,
//                   // color: Colors.black
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );

//   Widget _imgBanner() {
//     return Container(
//       height: 250,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20.0),
//         child: Image(
//           image: AssetImage('assets/greasywool.jpeg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       alignment: Alignment
//           .bottomCenter, // Align the image to the bottom of the container
//     );
//   }

//   Container _finalButton(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(bottom: 30),
//       child: ElevatedButton(
//         style: ButtonStyle(
//           padding: MaterialStateProperty.all(
//             EdgeInsets.symmetric(horizontal: 34),
//           ),
//           backgroundColor: MaterialStateProperty.all(
//             Colors.black,
//           ),

//           // backgroundColor: co,
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(100),
//             ),
//           ),
//         ),
//         child: Text(
//           "Buy now",
//           style: TextStyle(
//             fontSize: 18,
//             color: Colors.white,
//           ),
//         ),
//         onPressed: () {
//           // Navigator.pushNamed(context, '/homePage');
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => buy()),
//           );
//         },
//       ),
//     );
//   }
// }

//buynow page for knitting wool

class buy extends StatefulWidget {
  // const buy({super.key});

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  String dropdownvalue = 'India';
  var items = [
    'Afghanistan',
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Austrian Empire*',
    'Azerbaijan',
    'Baden*',
    'Bahamas,',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Bavaria*',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin ',
    'Bolivia'
        'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Brunswick and Lüneburg*',
    'Bulgaria',
    'Burkina Faso (Upper Volta)',
    'Burma',
    'Burundi',
    'Democratic Republic of the Congo',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'Duchy of Parma',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
  ];
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email, _password;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Center(
            child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 100.0, top: 50, right: 30),
                        ),
                        Row(
                          children: [
                            Center(
                              child: Container(
                                child: Text(
                                  'Fill the detail',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.white.withOpacity(0.3),
                                        Colors.transparent
                                      ],
                                    ),
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 5))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: 'Full name',
                                labelText: 'Full name',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Full name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.landscape,
                                  color: Colors.black,
                                ),
                                hintText: 'Eg. near apollo hospita;',
                                labelText: 'Land mark',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter landmark';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.house,
                                  color: Colors.black,
                                ),
                                hintText:
                                    'Flat,House no. ,Building,company,Apartment',
                                labelText: 'House no.',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter landmark';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.location_city,
                                  color: Colors.black,
                                ),
                                hintText: 'Eg.Theni',
                                labelText: 'Town/city',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Town/city';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.location_city_rounded,
                                  color: Colors.black,
                                ),
                                hintText: 'TamilNadu',
                                labelText: 'State',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter State';
                              }
                              return null;
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            onSaved: (value) {
                              _email = value!;
                            },
                            validator: (email) {
                              if (email!.isEmpty)
                                return "Please Enter Email ";
                              else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(
                                      email)) //Reg exp for validate the email

                                return "Its Not a Vaid Email";
                              return null;
                            },
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                                hintText: 'Email',
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Please enter Mother name';
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0, right: 50),
                        //   child: TextFormField(
                        //     style: TextStyle(color: Colors.black),
                        //     onSaved: (value) {
                        //       _password = value!;
                        //     },
                        //     // style: TextStyle(color: Colors.black),
                        //     validator: (password1) {
                        //       if (password1!.isEmpty)
                        //         return "Please fill this field";
                        //       else if (password1.length < 5 ||
                        //           password1.length > 8)
                        //         return "Password Length is incorrect";
                        //       else if (RegExp(
                        //               r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>')
                        //           .hasMatch(password1))
                        //         return "Password should be combined of letters,numbers and special characters ";

                        //       //Reg exp for validate the email

                        //       return null;
                        //     },
                        //     obscureText: true,
                        //     decoration: const InputDecoration(
                        //         icon: const Icon(
                        //           Icons.password,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Password',
                        //         labelText: 'Password',
                        //         labelStyle: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 15,
                        //           fontWeight: FontWeight.bold,
                        //         )),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.mobile_friendly,
                                  color: Colors.black,
                                ),
                                hintText: 'Mobile Number',
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Mobile Number';
                              }
                              return null;
                            },
                          ),
                        ),

                        // SizedBox(
                        //   height: 40,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0, right: 50),
                        //   child: TextFormField(
                        //     style: TextStyle(color: Colors.black),
                        //     decoration: const InputDecoration(
                        //         icon: const Icon(
                        //           Icons.location_city,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Address',
                        //         labelText: 'Enter your Address',
                        //         labelStyle: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 15,
                        //           fontWeight: FontWeight.bold,
                        //         )),
                        //     validator: (value) {
                        //       if (value!.isEmpty) {
                        //         return 'Please enter Address';
                        //       }
                        //       return null;
                        //     },
                        //   ),
                        // ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Country/region',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // ],
                            // ),
                            // Column(
                            //   children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 10.0),
                            //   child: DropdownButton(
                            //     // Initial Value
                            //     value: dropdownvalue,

                            //     // Down Arrow Icon
                            //     icon: const Icon(Icons.keyboard_arrow_down),

                            //     // Array list of items
                            //     items: items.map((String items) {
                            //       return DropdownMenuItem(
                            //         value: items,
                            //         child: Text(
                            //           items,
                            //           style: TextStyle(
                            //               fontWeight: FontWeight.bold),
                            //         ),
                            //       );
                            //     }).toList(),
                            //     // After selecting the desired option,it will
                            //     // change button value to selected value
                            //     onChanged: (String? newValue) {
                            //       setState(() {
                            //         dropdownvalue = newValue!;
                            //       });
                            //     },
                            //   ),
                            // ),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            child: Center(
                                child: TextField(
                              style: const TextStyle(color: Colors.black),
                              controller:
                                  dateInput, //editing controller of this TextField
                              decoration: InputDecoration(
                                filled: true,

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                //icon of text field
                                labelText: "Delivery date",
                                labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                // hintText: "DOB",
                                // hintStyle: const TextStyle(color: Colors.black),
                                //label text of field
                              ),
                              readOnly:
                                  true, //set it true, so that user will not able to edit text
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                      2000), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101),
                                );

                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement

                                  setState(() {
                                    dateInput.text =
                                        formattedDate; //set output date to TextField value.
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ))),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 140, top: 40),
                              child: ElevatedButton(
                                  onPressed: (() {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  orderplaced()));
                                      formKey.currentState!.save();
                                      if (_email == "test@gamil.com" &&
                                          _password == "root12345678") ;
                                    }
                                    ;
                                  }),
                                  child: Text("Submit",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        // letterSpacing: 0.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(230, 255, 255, 255),
                                    // side: BorderSide(width: 2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ]),
                )),
          )),
      // ),
    );
  }
}

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 2'),
//       ),
//       body: Center(
//         child: Text('This is Page 2'),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 3'),
//       ),
//       body: Center(
//         child: Text('This is Page 3'),
//       ),
//     );
//   }
// }

// class Page4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 4'),
//       ),
//       body: Center(
//         child: Text('This is Page 4'),
//       ),
//     );
//   }
// }

class orderplaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'E-commerce',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
          ),
          backgroundColor: Color(0xffe9dbff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(190),
              bottomLeft: Radius.circular(198),
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Thick Icon below AppBar
                Icon(
                  Icons.check_circle,
                  size: 48.0,
                  color: Colors.green,
                ),
                SizedBox(height: 16.0),

                // Text below Thick Icon
                Text(
                  'Thank you!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),

                // Additional Text Line
                Text(
                  'Order successfully delivered.',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Estimated delivery DATE.',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Tuesday 20 dec ',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Payment method ',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Cashon delivery ',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 16.0),

                // Button
                ElevatedButton(
                  // style: ButtonStyle(
                  //  backgroundColor: Color(0xffe9dbff),
                  // ),
                  style: ElevatedButton.styleFrom(primary: Color(0xffe9dbff)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderTracker()));
                    // Add button functionality here
                  },
                  child: Text(
                    'Track your order',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 16.0),

                // Additional Text below Button
                // Text(
                //   'Additional text below the button.',
                //   style: TextStyle(
                //     color: Colors.grey,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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