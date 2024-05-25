class ProductModel {
  String? id;
  String? image;
  String? title = '';
  String? name = '';
  double? price = 0;
  double? quantity = 0;
  bool? status = true;

  ProductModel();
}

List<ProductModel> product = [
  ProductModel()
    ..id = '1'
    ..image = 'assets/images/auto_1.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
  ProductModel()
    ..id = '2'
    ..image = 'assets/images/auto_2.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
  ProductModel()
    ..id = ''
    ..image = 'assets/images/auto_3.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
  ProductModel()
    ..id = ''
    ..image = 'assets/images/auto_4.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
  ProductModel()
    ..id = ''
    ..image = 'assets/images/auto_5.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
  ProductModel()
    ..id = ''
    ..image = 'assets/images/auto_6.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
  ProductModel()
    ..id = ''
    ..image = 'assets/images/auto_1.jpeg'
    ..title = ''
    ..name = ''
    ..price = 1.0
    ..quantity = 100
    ..status = true,
];
