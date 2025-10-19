import 'product.dart';

class Data {
  List<Product>? products;

  Data({this.products});

  factory Data.fromjson(Map<String, dynamic> json) {
    return Data(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromjson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> tojson() {
    return {'products': products?.map((e) => e.tojson()).toList()};
  }
}
