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
  // List yang berisi informasi beberapa buku
  List<Map<String, dynamic>> books = [
    {
      'title': '  Toserba',
      'author': 'Setiawan Aditapa',
      'price': 200.0,
      'isDiscounted': false,
    },
    {
      'title': 'Tips & Trik Top Global',
      'author': 'Setiawan Aditapa',
      'price': 150.0,
      'isDiscounted': false,
    },
    {
      'title': 'Belajar Flutter dari Nol',
      'author': 'Setiawan Aditapa',
      'price': 100.0,
      'isDiscounted': false,
    }
  ];

  // Menampilkan informasi semua buku sebelum diskon
  for (var book in books) {
    displayBookInfo(book['title'], book['author'], book['price'], book['isDiscounted']);
  }

  // Menerapkan diskon 10% pada semua buku
  double discountPercentage = 10;
  for (var book in books) {
    book['price'] = applyDiscount(book['price'], discountPercentage);
    book['isDiscounted'] = true;
  }

  // Menampilkan informasi semua buku setelah diskon
  print("\n=== Setelah Diskon ===");
  for (var book in books) {
    displayBookInfo(book['title'], book['author'], book['price'], book['isDiscounted']);
  }
}
