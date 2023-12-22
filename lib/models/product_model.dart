class ProductModel{
  String? id;
  String? name;
  String? background;
  double? price;
  double? priceSale;
  String? unit;
  int? sole;
  bool? isSave;
  bool? isSelectCart;
  String? createOrderAt;
 
 ProductModel();
}

List<ProductModel> rsProducts = [
  ProductModel()
    ..id = '1113'
    ..name = 'Khoá Toán tư duy tiền tiểu học'
    ..background = 'assets/images/product.png'
    ..price = 600000
    ..priceSale = 549000
    ..unit = 'K'
    ..sole = 12
    ..isSave = true,
  ProductModel()
    ..id = '2231'
    ..name = 'Học toán cùng cây thước Bkids'
    ..background = 'assets/images/product.png'
    ..price = 369000
    ..priceSale = 329000
    ..unit = 'Kg'
    ..sole = 79
    ..isSave = true,
  ProductModel()
    ..id = '3863'
    ..name = 'Hành trang vào lớp 1'
    ..background = 'assets/images/product.png'
    ..priceSale = 499000
    ..unit = 'K'
    ..sole = 12
    ..isSave = false,
  ProductModel()
    ..id = '4653'
    ..name = 'Chinh phục quốc kỳ - Cùng bé học lá cờ của các Quốc gia'
    ..background = 'assets/images/product.png'
    ..priceSale = 339000
    ..unit = 'K'
    ..sole = 12
    ..isSave = true,
  ProductModel()
    ..id = '5612'
    ..name = 'Chinh phục Quốc kỳ CĐ2'
    ..background = 'assets/images/product.png'
    ..price = 429000
    ..priceSale = 399000
    ..unit = 'K'
    ..sole = 12
    ..isSave = true,
  ProductModel()
    ..id = '6877'
    ..name = 'Toán tư duy Vinabacus'
    ..background = 'assets/images/product.png'
    ..price = 459000
    ..priceSale = 399000
    ..unit = 'Kg'
    ..sole = 12
    ..isSave = false,
];

List<ProductModel> cartRsProducts = [
  rsProducts[2]..isSelectCart = false,
  rsProducts[3]..isSelectCart = false,
  rsProducts[1]..isSelectCart = false,
];