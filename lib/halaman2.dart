import 'package:flutter/material.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    var data_kota = [
      "Cirebon",
      "Jakarta",
      "Bogor",
      "Depok",
      "Bekasi",
      "Bandung",
      "Karawang",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Halaman Baru")),
        body: ListView.separated(
          itemBuilder: (_, idx) {
            return ListTile(
              title: Text(data_kota[idx]),
              subtitle: Text("Jawa Barat, Indonesia"),
              leading: Icon(Icons.location_on, color: Colors.blueAccent),
            );
          },
          separatorBuilder: (_, idx) => SizedBox(),
          itemCount: data_kota.length,
        ),
      ),
    );
  }
}