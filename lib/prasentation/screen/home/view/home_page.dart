import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_app/prasentation/screen/home/auth/auth.dart';
import 'package:flutter_final_app/prasentation/screen/home/menuawal/menuhome.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nama = TextEditingController();
  final sekolah = TextEditingController();
  final kelas = TextEditingController();

  final User? user = Auth().currentUser;
  final TextEditingController _controllernama = TextEditingController();
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text(
      'Yuk Isi Data Diri',
      style: TextStyle(color: Colors.black),
    );
  }

  Widget _userUid() {
    return SizedBox(
      height: 100,
      child: Center(
        child: Text(
          user?.email ?? 'User email',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _textemail() {
    return const Text(
      "EMAIL",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _textnama() {
    return const Text(
      "Nama Lengkap",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _textsekolah() {
    return const Text(
      "Nama Sekolah",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _textkelas() {
    return const Text(
      "Nama Kelas",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _textfromfildnama() {
    return TextFormField(
      controller: nama,
      decoration: const InputDecoration(
        hintText: "inputkan nama",
        labelText: "Nama Lengkap",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 245, 245, 245)),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Nama tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _textfromfildsekolah() {
    return TextFormField(
      controller: sekolah,
      decoration: const InputDecoration(
        hintText: "Inputkan nama Sekolah",
        labelText: "Nama Sekolah",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 245, 245, 245)),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Nama Sekolah tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _textfromfildkelas() {
    return TextFormField(
      controller: kelas,
      decoration: const InputDecoration(
        hintText: "Inputkan Nama Kelas",
        labelText: "Nama Kelas",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 245, 245, 245)),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Kelas tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _signOutButton() {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(200, 50),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      onPressed: signOut,
      child: const Text('Log Out'),
    );
  }

  var _nama;
  final _namaContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          backgroundColor: Colors.white,
          title: _title(),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          color: Color.fromARGB(255, 228, 228, 228),
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: _textemail(),
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                ),
                Container(
                  child: _userUid(),
                  color: Colors.white,
                  height: 60,
                  width: 600,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: _textnama(),
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                ),
                _textfromfildnama(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: _textsekolah(),
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                ),
                _textfromfildsekolah(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: _textkelas(),
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                ),
                _textfromfildkelas(),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const Text(
                    "Daftar",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      const Size(200, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Menuhome(
                            nama: nama.text,
                            sekolah: sekolah.text,
                            kelas: kelas.text,
                          ),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                _signOutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
