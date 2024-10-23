// Kelas Book dengan atribut title, author, price, dan isDiscounted.
class Book {
  String title;
  String author;
  double price;
  bool isDiscounted;

  // Constructor untuk inisialisasi atribut
  Book({
    required this.title,
    required this.author,
    required this.price,
    this.isDiscounted = false, // Default isDiscounted adalah false
  });

  // Metode untuk menampilkan informasi lengkap buku
  void displayInfo() {
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

  // Metode untuk menerapkan diskon pada harga
  void applyDiscount(double discountPercentage) {
    if (isDiscounted) {
      print("Diskon sudah diterapkan sebelumnya.");
      return;
    }
    if (discountPercentage < 0 || discountPercentage > 100) {
      print("Persentase diskon tidak valid.");
      return;
    }

    double discountAmount = price * (discountPercentage / 100);
    price -= discountAmount;
    isDiscounted = true;
    print("Diskon sebesar $discountPercentage% diterapkan.");
    print("Harga setelah diskon: \$${price.toStringAsFixed(2)}");
  }

  // Metode untuk menghapus diskon dan mengembalikan harga asli
  void removeDiscount(double originalPrice) {
    if (!isDiscounted) {
      print("Tidak ada diskon yang diterapkan.");
      return;
    }
    price = originalPrice;
    isDiscounted = false;
    print("Diskon dihapus. Harga kembali ke harga asli: \$${price.toStringAsFixed(2)}");
  }
}

void main() {
  // Membuat objek dari kelas Book
  Book book1 = Book(
    title: "toserba ",
    author: "Setiawan aditapa",
    price: 200.0,
  );

  // Menampilkan informasi buku sebelum diskon
  book1.displayInfo();

  // Menerapkan diskon 15%
  book1.applyDiscount(15);

  // Menampilkan informasi buku setelah diskon
  book1.displayInfo();

  // Menghapus diskon dan mengembalikan harga asli
  book1.removeDiscount(200.0);

  // Menampilkan informasi buku setelah diskon dihapus
  book1.displayInfo();
}
