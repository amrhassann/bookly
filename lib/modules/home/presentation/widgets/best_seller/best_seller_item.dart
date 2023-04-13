import 'package:d_books/core/manager/assets_mananger.dart';
import 'package:d_books/core/manager/fonts_manager.dart';
import 'package:d_books/core/manager/styles_manager.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsManager.testImage,
                    ),
                  )),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: getMediumStyle(fontSize: 20).copyWith(
                      fontFamily: FontsManager.gTSectraFineFontFamily),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  'Rudyard Kipling',
                  style:
                      getMediumStyle(fontSize: 14),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '19.99\$',
                      style: getBoldStyle(fontSize: 20),
                    ),
                    const _BookRating(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}

class _BookRating extends StatelessWidget {
  const _BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const SizedBox(width: 3),

        Text(
          '4.8',
          style: getSemiBoldStyle(fontSize: 16),
        ),
        const SizedBox(width: 3),
        Text(
          '( 235 )',
          style: getMediumStyle(fontSize: 14),
        ),
      ],
    );
  }
}
