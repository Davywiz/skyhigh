// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductResponse {
  final String productId;
  final String category;
  final String sales;
  final String orderDate;
  final String shipDate;
  final String postalCode;
  final String subCategory;
  final String shipMode;
  final String state;
  final String segment;
  final String quantity;
  final String region;
  final String customerId;
  final String discount;
  final String country;
  final String rowId;
  final String productName;
  final String customerName;
  final String profit;
  final String city;
  final String orderId;

  ProductResponse({
    required this.productId,
    required this.category,
    required this.sales,
    required this.orderDate,
    required this.shipDate,
    required this.postalCode,
    required this.subCategory,
    required this.shipMode,
    required this.state,
    required this.segment,
    required this.quantity,
    required this.region,
    required this.customerId,
    required this.discount,
    required this.country,
    required this.rowId,
    required this.productName,
    required this.customerName,
    required this.profit,
    required this.city,
    required this.orderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Product ID': productId,
      'Category': category,
      'Sales': sales,
      'Order Date': orderDate,
      'Ship Date': shipDate,
      'Postal Code': postalCode,
      'Sub-Category': subCategory,
      'Ship Mode': shipMode,
      'State': state,
      'Segment': segment,
      'Quantity': quantity,
      'Region': region,
      'Customer ID': customerId,
      'Discount': discount,
      'Country': country,
      'Row ID': rowId,
      'Product Name': productName,
      'Customer Name': customerName,
      'Profit': profit,
      'City': city,
      'Order ID': orderId,
    };
  }

  factory ProductResponse.fromMap(Map<String, dynamic> map) {
    return ProductResponse(
      productId: map['Product ID'] as String,
      category: map['Category'] as String,
      sales: map['Sales'] as String,
      orderDate: map['Order Date'] as String,
      shipDate: map['Ship Date'] as String,
      postalCode: map['Postal Code'] as String,
      subCategory: map['Sub-Category'] as String,
      shipMode: map['Ship Mode'] as String,
      state: map['State'] as String,
      segment: map['Segment'] as String,
      quantity: map['Quantity'] as String,
      region: map['Region'] as String,
      customerId: map['Customer ID'] as String,
      discount: map['Discount'] as String,
      country: map['Country'] as String,
      rowId: map['Row ID'] as String,
      productName: map['Product Name'] as String,
      customerName: map['Customer Name'] as String,
      profit: map['Profit'] as String,
      city: map['City'] as String,
      orderId: map['Order ID'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductResponse.fromJson(String source) =>
      ProductResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}

class ListProductResponse {
  final List<ProductResponse> products;
  const ListProductResponse(this.products);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory ListProductResponse.fromMap(List<dynamic> map) {
    return ListProductResponse(
      List<ProductResponse>.from(
        (map).map<ProductResponse>(
          (x) => ProductResponse.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());
}
