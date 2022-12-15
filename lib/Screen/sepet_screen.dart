import 'package:flutter/material.dart';
import 'package:staj_sepet/utils/utils.dart';
import 'package:staj_sepet/widgets/item_card.dart';

class SepetScreen extends StatefulWidget {
  const SepetScreen({Key? key}) : super(key: key);

  @override
  State<SepetScreen> createState() => _SepetScreenState();
}

class _SepetScreenState extends State<SepetScreen> {
  @override
  void initState() {
    super.initState();
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
                    urunAdi: 'kot pantolon',
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
      style: Theme.of(context)
          .textTheme
          .headline3
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
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
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.end)
        ],
      ),
    );
  }
}
