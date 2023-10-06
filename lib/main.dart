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
  Color selectedColor = Colors.grey; // Default color

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
           child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _changeColor('Small', Colors.red);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedSize == 'Small' ? selectedColor : Colors.grey,
                  ),
                  child: const Text('S'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _changeColor('Medium', Colors.green);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedSize == 'Medium' ? selectedColor : Colors.grey,
                  ),
                  child: const Text('M'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _changeColor('Large', Colors.orange);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedSize == 'Large' ? selectedColor : Colors.grey,
                  ),
                  child: const Text('L'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _changeColor('XL', Colors.yellow);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedSize == 'XL' ? selectedColor : Colors.grey,
                  ),
                  child: const Text('XL'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _changeColor('XXL', Colors.orange);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedSize == 'XXL' ? selectedColor : Colors.grey,
                  ),
                  child: const Text('XXL'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _changeColor('XXXL', Colors.red);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    selectedSize == 'XXXL' ? selectedColor : Colors.grey,
                  ),
                  child: const Text('XXXL'),
                ),
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
