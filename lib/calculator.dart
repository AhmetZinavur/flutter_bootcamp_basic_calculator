import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _controller = TextEditingController();

  late String inputs;

  double actualResult = 0;

  double add() {
    double result = 0;

    inputs = _controller.text.toString();

    List<String> nums = inputs.split('+');

    for (int i = 0; i < nums.length; i++) {
      result += int.parse(nums[i].toString());
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 30, child: Text("Result: $actualResult")),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.none,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}7';
                        },
                        child: const Text("7")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}8';
                        },
                        child: const Text("8")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}9';
                        },
                        child: const Text("9")),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}4';
                        },
                        child: const Text("4")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}5';
                        },
                        child: const Text("5")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}6';
                        },
                        child: const Text("6")),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}1';
                        },
                        child: const Text("1")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}2';
                        },
                        child: const Text("2")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}3';
                        },
                        child: const Text("3")),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}0';
                        },
                        child: const Text("0")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            actualResult = add();
                          });
                          _controller.clear();
                        },
                        child: const Text("=")),
                    ElevatedButton(
                        onPressed: () {
                          _controller.text = '${_controller.text}+';
                        },
                        child: const Text("+")),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
