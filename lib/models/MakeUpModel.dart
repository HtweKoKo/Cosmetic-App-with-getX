// ignore_for_file: file_names

import 'package:get/get.dart';

class MakeUpModel {
  int? id;
  String? brand;
  String? name;
  String? price;
 
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  // List<ProductColors>? productColors;

  MakeUpModel(
      {this.id,
      this.brand,
      this.name,
      this.price,
      
      this.imageLink,
      this.productLink,
      this.websiteLink,
      this.description,
      this.rating,
      this.category,
      this.productType,
      this.createdAt,
      this.updatedAt,
      this.productApiUrl,
      this.apiFeaturedImage,
      // this.productColors
      });

 factory MakeUpModel.fromJson(Map<String, dynamic> json) {
   return MakeUpModel(
    id: json["id"],
     brand : json['brand'],
    name : json['name'],
    price : json['price'],
    imageLink : json['image_link'],
    productLink : json['product_link'],
    websiteLink : json['website_link'],
    description : json['description'],
    rating : json['rating'],
    category : json['category'],
    productType : json['product_type'],
    
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    productApiUrl : json['product_api_url'],
    apiFeaturedImage : json['api_featured_image'],
 );
  }
 final isfavourited = false.obs;
  
}

class ProductColors {
  String? hexValue;
  String? colourName;

  ProductColors({this.hexValue, this.colourName});

  ProductColors.fromJson(Map<String, dynamic> json) {
    hexValue : json['hex_value'];
    colourName : json['colour_name'];
  }

 
}
