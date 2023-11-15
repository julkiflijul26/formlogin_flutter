import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final String deskripsi;

  Produk({required this.nama, required this.deskripsi});
}

class ProdukListItem extends StatelessWidget {
  final Produk produk;
  final int id;

  ProdukListItem({required this.produk, required this.id});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$id. ${produk.nama}'),
      subtitle: Text(produk.deskripsi),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          print('Delete ${produk.nama}');
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Dummy data for produks
  final List<Produk> produks = [
    Produk(
        nama: 'Apel',
        deskripsi:
            'Apel adalah buah dengan kulit yang krispi dan daging yang segar. Tersedia dalam berbagai varietas dengan rasa manis hingga asam'),
    Produk(
        nama: 'Pisang',
        deskripsi:
            'Pisang adalah buah tropis yang memiliki kulit kuning dan daging yang lembut. Kaya akan potassium dan serat.'),
    Produk(
        nama: 'Jeruk',
        deskripsi:
            'Jeruk adalah buah citrus yang memiliki rasa manis dan asam. Kaya vitamin C dan menyegarkan'),
    Produk(
        nama: 'Mangga',
        deskripsi:
            'Mangga adalah buah tropis yang memiliki daging yang lembut, manis, dan beraroma. Tersedia dalam berbagai varietas'),
    Produk(
        nama: 'Semangka',
        deskripsi:
            'Semangka adalah buah besar berair dengan daging merah atau merah muda yang menyegarkan, sangat cocok untuk cuaca panas'),

    Produk(
        nama: 'Pepaya',
        deskripsi:
            'Pepaya adalah buah tropis dengan daging berwarna oranye yang lembut dan rasa manis'),

    Produk(
        nama: 'Kiwi',
        deskripsi:
            'Kiwi memiliki kulit berbulu coklat dan daging hijau dengan biji hitam. Buah ini kaya akan vitamin C'),

    Produk(
        nama: 'nanas',
        deskripsi:
            'Nanas adalah buah tropis dengan rasa manis dan asam. Memiliki tekstur yang segar dan serat'),

    Produk(
        nama: 'Strawberry',
        deskripsi:
            'Strawberry adalah buah beri kecil berwarna merah dengan rasa manis dan sedikit asam. Sering digunakan dalam berbagai hidangan'),

    Produk(
        nama: 'Anggur',
        deskripsi:
            'Anggur adalah buah berbentuk bulat atau oval dengan rasa manis. Tersedia dalam berbagai warna seperti merah, hijau, dan ungu'),

    // Add more produks as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama-nama buah'),
      ),
      body: ListView.builder(
        itemCount: produks.length,
        itemBuilder: (context, index) {
          return ProdukListItem(produk: produks[index], id: index + 1);
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
