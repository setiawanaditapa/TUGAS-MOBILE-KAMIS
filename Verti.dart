// Kelas dasar (Super Class) untuk Vertebrata
class Vertebrate {
  String name;
  String habitat;

  // Constructor untuk inisialisasi atribut
  Vertebrate(this.name, this.habitat);

  // Method untuk menampilkan informasi umum
  void displayInfo() {
    print("Nama: $name");
    print("Habitat: $habitat");
  }
}

// Subclass untuk Mamalia
class Mammal extends Vertebrate {
  bool hasFur;

  // Constructor untuk inisialisasi atribut mamalia
  Mammal(String name, String habitat, this.hasFur) : super(name, habitat);

  // Override method displayInfo untuk menambahkan informasi tambahan
  @override
  void displayInfo() {
    super.displayInfo();
    print("Memiliki bulu: ${hasFur ? 'Ya' : 'Tidak'}");
  }
}

// Subclass untuk Burung
class Bird extends Vertebrate {
  bool canFly;

  // Constructor untuk inisialisasi atribut burung
  Bird(String name, String habitat, this.canFly) : super(name, habitat);

  // Override method displayInfo untuk menambahkan informasi tambahan
  @override
  void displayInfo() {
    super.displayInfo();
    print("Dapat terbang: ${canFly ? 'Ya' : 'Tidak'}");
  }
}

// Subclass untuk Ikan
class Fish extends Vertebrate {
  bool isSaltwater;

  // Constructor untuk inisialisasi atribut ikan
  Fish(String name, String habitat, this.isSaltwater) : super(name, habitat);

  // Override method displayInfo untuk menambahkan informasi tambahan
  @override
  void displayInfo() {
    super.displayInfo();
    print("Hidup di air asin: ${isSaltwater ? 'Ya' : 'Tidak'}");
  }
}

void main() {
  // Membuat objek dari beberapa vertebrata
  Mammal mammal1 = Mammal("Singa", "Savanna", true);
  Bird bird1 = Bird("Elang", "Pegunungan", true);
  Fish fish1 = Fish("Ikan Kerapu", "Laut", true);

  // Menampilkan informasi masing-masing vertebrata
  print("Informasi Mamalia:");
  mammal1.displayInfo();

  print("\nInformasi Burung:");
  bird1.displayInfo();

  print("\nInformasi Ikan:");
  fish1.displayInfo();
}
