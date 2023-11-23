import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text(
              'Booking.com',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Profil butonuna tıklanınca yapılacak işlemler
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () {
                // Sepet butonuna tıklanınca yapılacak işlemler
              },
            ),
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                // İletişim butonuna tıklanınca yapılacak işlemler
              },
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // Arama Alanı
                  Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 4.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Seyehat noktanızı girin',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // Giriş/Çıkış Tarihleri
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 4.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Giriş Tarihi',
                              prefixIcon: Icon(Icons.calendar_today),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Çıkış Tarihi',
                              prefixIcon: Icon(Icons.calendar_today),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Kişi Sayısı
                  Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 4.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '',
                       // prefixIcon: Icon(Icons.people),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // Otel Resimleri ve İsimleri
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.amber, width: 2.0),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: Image.asset(
                                          'assets/hotel_image.png',
                                          width: 200,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 8,
                                        left: 8,
                                        right: 8,
                                        child: Text(
                                          'Dream Otel',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 2),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.amber, width: 2.0),
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: Image.asset(
                                          'assets/hotel_image2.png',
                                          width: 200,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 8,
                                        left: 8,
                                        right: 8,
                                        child: Text(
                                          'Paradise Otel',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        // Yeni eklenen fotoğraf
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Image.asset(
                                'assets/yeni_otel_image.png',
                                width: double.infinity,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              right: 8,
                              child: Text(
                                'Ikigai Hotel',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 190,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/booking_logo.png',
                //width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
