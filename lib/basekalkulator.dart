void main() {
  String hasil = "";

  void _hitung(String operator) {
    double nilai1 = 18;
    double nilai2 = 3;
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

    hasil = perhitungan.toString();

    print("Hasil dari $operator adalah $hasil");
  }

  // Panggil fungsi _hitung dengan operator tertentu
  _hitung('+');
  _hitung('-');
  _hitung('*');
  _hitung('/');
}
