import 'package:skyhigh/models/product.dart';

import '../response/responses.dart';

//so our app won't crash if there are invalid values
extension ProductsResponseMapper on ProductResponse {
  Product toDomain() {
    return Product(
      category: category,
      productName: productName,
      postalCode: int.parse(postalCode),
      subCategory: subCategory,
      shipMode: shipMode,
      state: state,
      segment: segment,
      quantity: int.parse(quantity),
      region: region,
      customerId: customerId,
      discount: discount,
      country: country,
      rowId: int.parse(rowId),
      customerName: customerName,
      profit: double.parse(profit),
      city: city,
      orderId: orderId,
      orderDate: orderDate,
      sales: double.parse(sales),
      productId: productId,
      shipDate: shipDate,
    );
  }
}

extension ListProductResponseMapper on ListProductResponse? {
  List<Product> toDomain() {
    List<Product> mappedProduct =
        (this?.products.map((prod) => prod.toDomain()) ??
                const Iterable.empty())
            .cast<Product>()
            .toList();
    return mappedProduct;
  }
}
