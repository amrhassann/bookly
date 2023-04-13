import 'package:d_books/modules/home/presentation/widgets/best_seller/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (_, i) => const BestSellerItem(),
      separatorBuilder: (c, i) => const SizedBox(height: 10),
    );
  }
}
