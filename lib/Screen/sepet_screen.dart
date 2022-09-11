import 'package:flutter/material.dart';
import 'package:staj_sepet/model/api_deneme.dart';

class SepetScreen extends StatefulWidget {
  const SepetScreen({Key? key}) : super(key: key);

  @override
  State<SepetScreen> createState() => _SepetScreenState();
}

class _SepetScreenState extends State<SepetScreen> {
  @override
  void initState() {
    super.initState();
    fetchSepet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            pageTitle(context),
            Expanded(
              child: ListView.builder(
                itemCount: 500,
                itemBuilder: (BuildContext context, int index) {
                  return const ItemCard(
                    urunAdi: 'kot pantül',
                    urunRenk: 'mavi',
                    birimFiyat: 40,
                    adet: 8,
                  );
                },
              ),
            ),
            const TotalPriceShow(
              totalPrice: 300,
            )
          ],
        ),
      ),
    );
  }

  Text pageTitle(BuildContext context) {
    return Text(
      'SEPETİM',
      style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

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
    return Card(
      margin: ProjectMargins.cardMargin,
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: PaddindUtility().paddingGeneral,
          child: Row(children: [
            Image.network(
              'https://picsum.photos/200',
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.urunAdi}',
                    style: const TextStyle(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
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
                    IconButton(onPressed: _urunAzalt, icon: const Icon(Icons.remove_circle)),
                    Text('Adet : $urunAdet'),
                    IconButton(onPressed: _urunArttir, icon: const Icon(Icons.add_circle)),
                  ],
                ),
                Text(
                  '$urunToplamFiyat',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
      ),
      shape: ProjectMargins.roundedRectangleBorder,
    );
  }
}

class TotalPriceShow extends StatelessWidget {
  const TotalPriceShow({
    Key? key,
    required this.totalPrice,
  }) : super(key: key);

  final double? totalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: ProjectMargins.cardMargin,
      alignment: Alignment.topRight,
      child: Column(
        children: [
          const Text('Toplam Sepet Tutarı'),
          Text('$totalPrice ₺',
              style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.end)
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class PaddindUtility {
  final paddingGeneral = const EdgeInsets.all(8);
}
