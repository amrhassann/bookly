import 'package:d_books/modules/home/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';
class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context,i){
          return const CustomBookItem();
        },
      ),
    );
  }
}