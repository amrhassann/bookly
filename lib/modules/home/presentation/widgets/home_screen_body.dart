import 'package:d_books/core/manager/styles_manager.dart';
import 'package:d_books/modules/home/presentation/widgets/best_seller/best_seller_books_list.dart';
import 'package:d_books/modules/home/presentation/widgets/custom_appbar.dart';
import 'package:d_books/modules/home/presentation/widgets/featured/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppbar(),
          const FeaturedBooksList(),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                Text(
                  'Best Seller',
                  style: getSemiBoldStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                const BestSellerBooksList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
