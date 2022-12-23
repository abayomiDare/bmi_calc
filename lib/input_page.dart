import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card.dart';
import 'card_content.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  colour: activeColor,
                  cardChild: cardContent(
                    text: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                ReusableCard(
                  colour: activeColor,
                  cardChild: cardContent(
                    text: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          const ReusableCard(
            colour: activeColor,
          ),
          Expanded(
            child: Row(
              children: const [
                ReusableCard(
                  colour: activeColor,
                ),
                ReusableCard(
                  colour: activeColor,
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
