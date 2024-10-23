void checkBookPrice(double price) {
  if (price > 100) {
    print("Buku ini mahal.");
  } else if (price > 50 && price <= 100) {
    print("Buku ini cukup terjangkau.");
  } else {
    print("Buku ini murah.");
  }
}

void main() {
  // Harga beberapa buku
  double bookPrice1 = 150.0;
  double bookPrice2 = 75.0;
  double bookPrice3 = 30.0;

  // Mengecek harga buku dengan percabangan if-else
  print("Harga buku 1: \$${bookPrice1}");
  checkBookPrice(bookPrice1);

  print("Harga buku 2: \$${bookPrice2}");
  checkBookPrice(bookPrice2);

  print("Harga buku 3: \$${bookPrice3}");
  checkBookPrice(bookPrice3);
}
