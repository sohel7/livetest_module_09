import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonColorChangeScreen(),
    );
  }
}

class ButtonColorChangeScreen extends StatefulWidget {
  @override
  _ButtonColorChangeScreenState createState() =>
      _ButtonColorChangeScreenState();
}

class _ButtonColorChangeScreenState extends State<ButtonColorChangeScreen> {
  String selectedSize = "";
  Color selectedColor = Colors.blue; // Default color

  void _changeColor(String size, Color color) {
    setState(() {
      selectedSize = size;
      selectedColor = color;
    });
    _showSnackbar(size);
  }

  void _showSnackbar(String size) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0), // Add space around buttons
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20, // Set spacing between buttons
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      _changeColor('Small', Colors.red);
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                      selectedSize == 'Small' ? selectedColor : Colors.blue,
                    ),
                    child: const Text('S'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _changeColor('Medium', Colors.green);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedSize == 'Medium'
                          ? selectedColor
                          : Colors.blue,
                    ),
                    child: const Text('M'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _changeColor('Large', Colors.orange);
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                      selectedSize == 'Large' ? selectedColor : Colors.blue,
                    ),
                    child: const Text('L'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _changeColor('XL', Colors.orange);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedSize == 'XL' ? selectedColor : Colors.blue,
                    ),
                    child: const Text('XL'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _changeColor('XXL', Colors.orange);
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                      selectedSize == 'XXL' ? selectedColor : Colors.blue,
                    ),
                    child: const Text('XXL'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _changeColor('XXXL', Colors.orange);
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                      selectedSize == 'XXXL' ? selectedColor : Colors.blue,
                    ),
                    child: const Text('XXXL'),
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
