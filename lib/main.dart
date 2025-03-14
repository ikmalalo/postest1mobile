import 'package:flutter/material.dart';
import 'package:pertpraktikum1flutter/tugas.dart';

void main() {
  runApp(const TaskApp());
}

final List<Map> jobs = [
  {'nama': 'Job 1', 'deskripsi': 'Design UI/UX'},
  {'nama': 'Job 2', 'deskripsi': 'Design FrontEnd'},
  {'nama': 'Job 3', 'deskripsi': 'BackEnd System'},
];

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Office Room',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'File Job',
                    prefixIcon: const Icon(
                      Icons.description_outlined,
                      color: Color.fromARGB(255, 87, 0, 130),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Job Description',
                    prefixIcon: const Icon(
                      Icons.description,
                      color: Color.fromARGB(255, 112, 0, 156),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 222, 133, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      "Add Job",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: jobs.length,
                  itemBuilder: (context, index) {
                    return Tugas(
                      nama: jobs[index]['nama'],
                      deskripsi: jobs[index]['deskripsi'],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
