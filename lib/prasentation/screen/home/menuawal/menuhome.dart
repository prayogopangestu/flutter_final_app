import 'package:flutter/material.dart';
import 'package:flutter_final_app/core/values/colors.dart';

class Menuhome extends StatelessWidget {
  Menuhome({required this.nama, required this.sekolah, required this.kelas});

  String nama;
  String sekolah;
  String kelas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text(nama),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20)),
              height: 170,
              child: const Stack(
                children: [
                  Positioned(
                    top: 26,
                    left: 20,
                    child: Text(
                      'Mau kerjain latihan soal apa hari ini?',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text('Mau kerjain latihan soal apa hari ini?'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 170,
            ),
          ],
        ),
      ),
    );
  }
}
