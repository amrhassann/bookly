import 'package:d_books/modules/home/presentation/widgets/featured/featured_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5 + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return const SizedBox(
              width: 5,
            );
          } else {
            return const CustomBookItem();
          }
        },
        separatorBuilder: (_, i) {
          return const SizedBox(width: 15);
        },
      ),
    );
  }
}
