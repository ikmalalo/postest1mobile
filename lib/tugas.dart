import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  Tugas({ Key? key, required this.nama, required this.deskripsi }) : super(key: key);

  final List<Map> jobs = [
    {'nama': 'Job File 1', 'deskripsi': 'Deskripsi Job File 1'},
    {'nama': 'Job File 2', 'deskripsi': 'Deskripsi Job File 2'},
  ];

  String nama;
  String deskripsi;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.task),
      title: Text(nama),
      subtitle: Text(deskripsi),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color.fromARGB(255, 134, 0, 137)),
        borderRadius: BorderRadius.circular(16),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.delete, color: Colors.red),
      ),
    );
  }
}
