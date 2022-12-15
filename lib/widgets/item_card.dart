import 'package:flutter/material.dart';
import 'package:staj_sepet/utils/utils.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    Key? key,
    required this.urunAdi,
    required this.urunRenk,
    required this.birimFiyat,
    required this.adet,
  }) : super(key: key);
  final String? urunAdi;
  final String? urunRenk;
  final double? birimFiyat;
  final int? adet;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int urunAdet = 0;
  void _urunArttir() {
    setState(() {
      urunAdet++;
    });
  }

  void _urunAzalt() {
    setState(() {
      urunAdet > 0 ? urunAdet-- : null;
    });

    void _toplamTutar(int adet, double fiyat) {
      double toplam = 0;
      setState(() {
        toplam = adet * fiyat;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double urunToplamFiyat = widget.birimFiyat! * urunAdet;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: ProjectMargins.cardMargin,
        child: SizedBox(
          height: 100,
          child: Padding(
            padding: PaddindUtility().paddingGeneral,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://picsum.photos/200',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.urunAdi}',
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Renk: ${widget.urunRenk}'),
                    Text('Birim Fiyatı: ${widget.birimFiyat}')
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: _urunAzalt,
                          icon: const Icon(Icons.remove_circle)),
                      Text('Adet : $urunAdet'),
                      IconButton(
                          onPressed: _urunArttir,
                          icon: const Icon(Icons.add_circle)),
                    ],
                  ),
                  Text(
                    '$urunToplamFiyat',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
        ),
        shape: ProjectMargins.roundedRectangleBorder,
      ),
    );
  }
}
