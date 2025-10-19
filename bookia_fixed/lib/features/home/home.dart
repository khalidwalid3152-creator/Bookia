import 'package:bookia/features/home/presentation/home_cubit.dart';
import 'package:bookia/features/home/presentation/home_state.dart';
import 'package:bookia/features/home/widgets/grid_view.dart';
import 'package:bookia/features/home/widgets/slider.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getInitData(),
      child: Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            var cubit = context.read<HomeCubit>();
            if (state is HomeLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HomeFailure) {
              return const Center(child: Text("Something went wrong"));
            }
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  homeSlider(),
                  Gap(20),
                  Text("Best Seller", style: textstyles.size24()),
                  Gap(20),
                  Expanded(child: gridView(books: cubit.products)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
