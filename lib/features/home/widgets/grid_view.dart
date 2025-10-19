import 'package:bookia/features/home/data/models/bestsaller/product.dart';
import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class gridView extends StatelessWidget {
  const gridView({super.key, required this.books});
  final List<Product> books;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: books.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 300,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Appcolors.bgcard,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    books[index].image!,
                    height: 175,
                    width: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(10),
                SizedBox(
                  height: 45,
                  child: Text(books[index].name!, style: textstyles.size18()),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹ ${books[index].price!}",
                      style: textstyles.size16(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Appimages.buybotton),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
