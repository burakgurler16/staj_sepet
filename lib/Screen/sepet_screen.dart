import 'package:flutter/material.dart';

class SepetScreen extends StatefulWidget {
  const SepetScreen({Key? key}) : super(key: key);

  @override
  State<SepetScreen> createState() => _SepetScreenState();
}

class _SepetScreenState extends State<SepetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            pageTitle(context),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ItemCard();
                },
              ),
            ),
            const TotalPriceShow()
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

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                children: const [
                  Text(
                    'burada bir başlık olabilirrrr',
                    style: TextStyle(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
                  ),
                  Text('Renk: Mavi'),
                  Text('Birim Fiyatı: 60')
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle)),
                    const Text('Adet : 5'),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle)),
                  ],
                ),
                const Text(
                  '300₺',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class TotalPriceShow extends StatelessWidget {
  const TotalPriceShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: ProjectMargins.cardMargin,
      alignment: Alignment.topRight,
      child: Column(
        children: [
          const Text('Toplam Sepet Tutarı'),
          Text('3000₺',
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
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddinBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(8);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}
