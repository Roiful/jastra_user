import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import './pesan.dart';

// ignore: duplicate_import
import './katalog.dart';
import './profil.dart';

void main() => runApp(MaterialApp(
      home: HelpCenter(),
    ));

class HelpCenter extends StatefulWidget {
  @override
  _HelpCenterState createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Katalog()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pesan()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profil()),
        );
        break;
      default:
        break;
    }
  }

  void _launchWhatsApp() async {
    final phoneNumber = '+628979842121'; // WhatsApp number
    final message =
        'Permintaan lupa password :: ${DateTime.now()}\nUsername atau Email: ${_emailController.text}';

    String url =
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Pusat Bantuan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white, // Background color changed to white
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Pusat Bantuan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Selamat datang di Pusat Bantuan kami. Di sini Anda akan menemukan informasi dan panduan untuk membantu Anda menggunakan aplikasi kami dengan lebih efektif. Jika Anda memiliki pertanyaan atau mengalami masalah, silakan lihat bagian di bawah ini atau hubungi tim dukungan kami.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 24),
            Text(
              'Panduan Penggunaan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              '1. Memulai\n- Instalasi Aplikasi : \nUnduh dan pasang aplikasi dari Google Play Store \n- Pendaftaran :\nBuat akun baru dengan mengisi informasi yang diperlukan atau masuk dengan akun Google.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              '2. Mengirim Pesan\n- Buka Menu Pesan:\nDisini dapat berkomunikasi dengan admin JASTRA untuk konfirmasi produk ataupun titip diluar katalog.\n- Ketik Pesan :\n Ketik pesan Anda di kotak teks di bagian bawah layar.\n- Kirim Pesan: Tekan ikon kirim untuk mengirim pesan Anda.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              '3. Mengirim File\n- Tambahkan File:\n Tekan ikon tambah (➕) di sebelah kotak teks untuk memilih file yang ingin Anda kirim.\n- Pilih File :\nPilih foto, video, atau dokumen dari perangkat Anda.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 24),
            Text(
              'Pemecahan Masalah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              '1. Masalah Umum\n- Tidak Bisa Masuk :\n Pastikan Anda menggunakan email dan kata sandi yang benar. Jika lupa kata sandi, gunakan opsi "Forgot Password" setelah itu isi email atau username dan akan di arahkan ke whatsapp untuk dilakukan pengecekan oleh admin.\n- Aplikasi Lambat :\nCoba tutup aplikasi dan buka kembali. Pastikan juga perangkat Anda memiliki koneksi internet yang stabil.\n- Pesan Tidak Terkirim :\nPeriksa koneksi internet Anda dan coba kirim ulang pesan. Jika masih tidak berhasil, restart aplikasi.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              'Kontak Dukungan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Jika Anda memerlukan bantuan lebih lanjut, silakan hubungi tim dukungan kami melalui salah satu cara berikut:\n- Email: jastra@gmail.com\n- Live Chat: Gunakan fitur live chat di aplikasi untuk berbicara langsung dengan tim dukungan kami.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
              label: Text('Hubungi via WhatsApp'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: _launchWhatsApp,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.storage_sharp),
            label: 'Katalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(210, 226, 129, 10),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
