// Fungsi untuk menampilkan informasi buku
void displayBookInfo(String title, String author, double price, bool isDiscounted) {
  print("===== Informasi Buku =====");
  print("Judul      : $title");
  print("Penulis    : $author");
  print("Harga      : \$${price.toStringAsFixed(2)}");
  if (isDiscounted) {
    print("Status     : Diskon telah diterapkan.");
  } else {
    print("Status     : Tidak ada diskon.");
  }
  print("==========================");
}

// Fungsi untuk menerapkan diskon pada harga buku
double applyDiscount(double price, double discountPercentage) {
  if (discountPercentage < 0 || discountPercentage > 100) {
    print("Persentase diskon tidak valid.");
    return price;
  }
  double discountAmount = price * (discountPercentage / 100);
  return price - discountAmount;
}

// Fungsi utama
void main() {
  // Inisialisasi informasi buku
  String title = "Toserba ";
  String author = "Setiawan aditapa";
  double price = 200.0;
  bool isDiscounted = false;

  // Menampilkan informasi buku sebelum diskon
  displayBookInfo(title, author, price, isDiscounted);

  // Menerapkan diskon 15%
  double discountPercentage = 15;
  price = applyDiscount(price, discountPercentage);
  isDiscounted = true;

  // Menampilkan informasi buku setelah diskon
  displayBookInfo(title, author, price, isDiscounted);
}
