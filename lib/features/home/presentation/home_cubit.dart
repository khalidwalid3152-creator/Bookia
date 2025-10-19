import 'package:bookia/features/home/data/models/bestsaller/bestsaller.dart';
import 'package:bookia/features/home/data/models/bestsaller/data.dart';
import 'package:bookia/features/home/data/models/bestsaller/product.dart';
import 'package:bookia/features/home/data/models/s_slider/s_slider.dart';
import 'package:bookia/features/home/data/models/s_slider/slider.dart';
import 'package:bookia/features/home/data/repo/home_repo.dart';
import 'package:bookia/features/home/presentation/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<Product> products = [];
 var Sliders ;

  getInitData() async {
    emit(HomeLoading());
    var response = await Future.wait([
      HomeRepo().getbestSellers(),
      HomeRepo().getslider(),
    ]);

    var sliderRes = response[1] as SSlider?;
    var bestSallerRes = response[0] as Bestsaller?;

    if (sliderRes != null || bestSallerRes != null) {
      products = bestSallerRes?.data?.products ?? [];
      Sliders = List<SliderModel>.from(sliderRes?.data?.sliders ?? []);

      emit(Homesuccess());
    } else {
      emit(HomeFailure());
    }
  }
  // getBestSellers() async {
  //   emit(HomeLoading());
  //   var res = await HomeRepo().getbestSellers();
  //   if (res != null) {
  //     products = res.data?.products ?? [];
  //     emit(Homesuccess());
  //   } else {
  //     emit(HomeFailure());
  //   }
  // }

  // getSlider() async {
  //   emit(HomeLoading());
  //   var res = await HomeRepo().getslider();
  //   if (res != null) {
  //    sliders = List<Slider>.from(res.data?.sliders ?? []);

  //     emit(Homesuccess());
  //   } else {
  //     emit(HomeFailure());
  //   }
  // }
}
