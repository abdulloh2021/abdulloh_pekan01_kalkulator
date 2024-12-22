import 'package:flutter/material.dart';

class KalkulatorHomePage extends StatefulWidget {
  const KalkulatorHomePage({Key? key}) : super(key: key);

  @override
  _KalkulatorHomePageState createState() => _KalkulatorHomePageState();
}

class _KalkulatorHomePageState extends State<KalkulatorHomePage> {
  final TextEditingController _controllernilai1 = TextEditingController();
  final TextEditingController _controllernilai2 = TextEditingController();
  String _hasil = "";

  void _hitung(String operator) {
    double nilai1 = double.tryParse(_controllernilai1.text) ?? 0;
    double nilai2 = double.tryParse(_controllernilai2.text) ?? 0;
    double perhitungan = 0;

    if (operator == '+') {
      perhitungan = nilai1 + nilai2;
    } else if (operator == '-') {
      perhitungan = nilai1 - nilai2;
    } else if (operator == '/') {
      perhitungan = nilai1 / nilai2;
    } else if (operator == '*') {
      perhitungan = nilai1 * nilai2;
    }

    setState(() {
      _hasil = "Hasil: $perhitungan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Kalkulator Abdul'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllernilai1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nilai 1',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controllernilai2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nilai 2',
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _hitung('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('/'),
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: () => _hitung('*'),
                  child: const Text('*'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              _hasil,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
