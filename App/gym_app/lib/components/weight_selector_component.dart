import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WeightSelectorComponent extends StatefulWidget {
  const WeightSelectorComponent({super.key});

  @override
  State<WeightSelectorComponent> createState() => _WeightSelectorComponentState();
}

class _WeightSelectorComponentState extends State<WeightSelectorComponent> {
  double _weight = 0;

  @override
  void initState() {
    super.initState();
    _loadWeight(); // cargamos al iniciar
  }

  void _incrementWeight() {
    setState(() {
      _weight += 2.5;
    });
    _saveWeight();
  }

  void _decrementWeight() {
    setState(() {
      if (_weight >= 2.5) {
        _weight -= 2.5;
      } else {
        _weight = 0;
      }
    });
    _saveWeight();
  }

  void _saveWeight() {
    final box = Hive.box('data');
    box.put('peso_actual', _weight);
  }

  void _loadWeight() {
    final box = Hive.box('data');
    final saved = box.get('peso_actual', defaultValue: 0.0);
    setState(() {
      _weight = saved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          IconButton(
            onPressed: _incrementWeight,
            icon: const Icon(Icons.add, color: Colors.white),
            style: IconButton.styleFrom(backgroundColor: const Color(0xFF2E4229)),
          ),
          const SizedBox(width: 12),
          Text(
            '${_weight.toStringAsFixed(1)} kg',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(width: 12),
          IconButton(
            onPressed: _decrementWeight,
            icon: const Icon(Icons.remove, color: Colors.white),
            style: IconButton.styleFrom(backgroundColor: const Color(0xFF2E4229)),
          ),
        ],
      ),
    );
  }
}
