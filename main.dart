import 'package:flutter/material.dart';

void main() {
  runApp(KontakApp());
}

class KontakApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Kontak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DaftarKontak(),
    );
  }
}

class DaftarKontak extends StatefulWidget {
  @override
  _DaftarKontakState createState() => _DaftarKontakState();
}

class _DaftarKontakState extends State<DaftarKontak> {
  final List<Map<String, String>> kontak = [];

  final _namaController = TextEditingController();
  final _teleponController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _tambahKontak() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        kontak.add({
          'nama': _namaController.text,
          'telepon': _teleponController.text,
        });
      });
      _namaController.clear();
      _teleponController.clear();
      Navigator.of(context).pop();
    }
  }

  void _hapusKontak(int index) {
    setState(() {
      kontak.removeAt(index);
    });
  }

  void _showTambahKontakDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambah Kontak'),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(labelText: 'Nama'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _teleponController,
                  decoration: InputDecoration(labelText: 'Nomor Telepon'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nomor telepon tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Simpan'),
              onPressed: _tambahKontak,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kontak'),
      ),
      body: ListView.builder(
        itemCount: kontak.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(kontak[index]['nama']!),
            subtitle: Text(kontak[index]['telepon']!),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () => _hapusKontak(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _showTambahKontakDialog,
      ),
    );
  }
}
