import 'dart:io'; // Digunakan untuk mengambil input dari pengguna

// Fungsi untuk menampilkan menu
void displayMenu() {
  print("===== Menu Operasi Matematika =====");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");
  print("===================================");
  print("Pilih operasi (1-4): ");
}

// Fungsi untuk melakukan operasi matematika
void performOperation(int choice, double num1, double num2) {
  switch (choice) {
    case 1:
      print("Hasil Penjumlahan: ${num1 + num2}");
      break;
    case 2:
      print("Hasil Pengurangan: ${num1 - num2}");
      break;
    case 3:
      print("Hasil Perkalian: ${num1 * num2}");
      break;
    case 4:
      if (num2 != 0) {
        print("Hasil Pembagian: ${num1 / num2}");
      } else {
        print("Error: Pembagian dengan nol tidak diperbolehkan.");
      }
      break;
    default:
      print("Pilihan tidak valid.");
  }
}

void main() {
  // Menampilkan menu operasi matematika
  displayMenu();

  // Mengambil input pilihan pengguna
  int? choice = int.parse(stdin.readLineSync()!);

  // Meminta pengguna memasukkan dua angka
  print("Masukkan angka pertama: ");
  double? num1 = double.parse(stdin.readLineSync()!);

  print("Masukkan angka kedua: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  // Menjalankan operasi berdasarkan pilihan
  performOperation(choice, num1, num2);
}
