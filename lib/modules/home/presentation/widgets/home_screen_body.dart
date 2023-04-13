import 'package:d_books/core/manager/styles_manager.dart';
import 'package:d_books/modules/home/presentation/widgets/custom_appbar.dart';
import 'package:d_books/modules/home/presentation/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        CustomAppbar(),
        FeaturedBooksList(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 50),
          child: Text(
            'Best Seller',
            style: StylesManager.titleMedium,
          ),
        ),
      ],
    );
  }
}
