import 'package:flutter/material.dart';

void main() {
  runApp(const uts_ramaandika_mobileprogramming());
}

class uts_ramaandika_mobileprogramming extends StatefulWidget {
  const uts_ramaandika_mobileprogramming({Key? key}) : super(key: key);

  @override
  State<uts_ramaandika_mobileprogramming> createState() => _MyAppState();
}

class _MyAppState extends State<uts_ramaandika_mobileprogramming> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 25,
          title: Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 0, 255),
                  fontSize: 45,
                  fontFamily: 'Arial',
                ),
              ),
              const SizedBox(width: 160),
              Image.asset(
                'assets/images/iconrama.jpg',
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          RoundedBox(
            color: Color.fromARGB(255, 124, 255, 244),
            text1: 'Puma',
            text2: 'FLYER RUNNER',
            text3: 'Harga Diskon',
            text4: 'Rp 550,000',
            imageUrl:
                'https://cdn.shopify.com/s/files/1/0603/3031/1875/products/main-square_6a440718-93c8-45ad-bd0c-17a8640b6802_540x.jpg?v=1656307376',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 255, 180, 245),
            text1: 'Converse ALL Star',
            text2: "Original",
            text3: 'Harga Normal',
            text4: 'Rp 730,000',
            imageUrl:
                'https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/13/297391/297391_ff0a71ed-8056-4b61-b958-009f8a06fdbb_780_780.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 255, 254, 169),
            text1: 'Egier',
            text2: "Tiger Claw Abu",
            text3: 'Harga Diskon',
            text4: 'Rp 1,100,000',
            imageUrl:
                'https://s2.bukalapak.com/img/2049525471/large/Sepatu_Eiger_Tiger_Claw_Abu_Sepatu_Gunung_Bukan_Sepatu_Snta.jpg.webp',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 202, 173, 255),
            text1: 'Flat Shoes',
            text2: "Pasha 3801 Ivory",
            text3: 'Harga Normal',
            text4: 'Rp 230,000',
            imageUrl:
                'https://images.tokopedia.net/img/cache/900/product-1/2020/5/6/batch-upload/batch-upload_0a9f3bb9-957c-44c3-831f-4e9ff3865775',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 158, 255, 182),
            text1: 'Slip On Metalik',
            text2: "Prima Classe Bernal",
            text3: 'Harga Normal',
            text4: 'Rp 350,000',
            imageUrl:
                'https://img.my-best.id/item_part_images/3f6e02ba868d42c1923395903974b975.jpg?ixlib=rails-4.3.1&q=70&lossless=0&w=940&h=940&fit=fill&fill-color=FFFFFF&s=f80026ff0ad4bce970425743d61fdfd8',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;

  const RoundedBox({
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -17,
            right: -2,
            child: Image.network(
              imageUrl,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}