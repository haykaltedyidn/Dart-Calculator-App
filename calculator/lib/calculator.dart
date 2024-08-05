import 'dart:io';

void main() {
  bool continueProgram = true;

  while (continueProgram) {
    print('Kalkulator Test 0.1 ID Ver');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. Perkalian');
    print('4. Pembagian');
    print('5. Keluar dari program ini');
    stdout.write('Pilih operasi yang ingin dilakukan (1-5): ');

    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    if (choice == null || choice < 1 || choice > 5) {
      print('Pilihan tidak valid. Silakan coba lagi.\n');
      continue;
    }

    if (choice == 5) {
      continueProgram = false;
      print('Terima kasih telah menggunakan kalkulator ini.');
      break;
    }

    stdout.write('Masukkan angka pertama disini: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Masukkan angka kedua disini: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || num2 == null) {
      print('Input tidak valid. Silakan coba lagi.\n');
      continue;
    }

    double result;

    switch (choice) {
      case 1:
        result = num1 + num2;
        print('Hasil: $num1 + $num2 = $result\n');
        break;
      case 2:
        result = num1 - num2;
        print('Hasil: $num1 - $num2 = $result\n');
        break;
      case 3:
        result = num1 * num2;
        print('Hasil: $num1 * $num2 = $result\n');
        break;
      case 4:
        if (num2 != 0) {
          result = num1 / num2;
          print('Hasil: $num1 / $num2 = $result\n');
        } else {
          print('Pembagian dengan nol tidak diizinkan.\n');
        }
        break;
      default:
        print('Pilihan tidak valid.\n');
    }
  }
}
