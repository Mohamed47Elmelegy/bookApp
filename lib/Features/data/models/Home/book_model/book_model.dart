import 'package:book_with_claen_architecture/Features/Domin/Entities/book_entities.dart';
import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends BookEntities {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    required super.bookId,
    super.image,
    required super.title,
    super.authourName,
    super.price,
    super.rating,
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  // Named constructor for JSON deserialization
  BookModel.fromJson(Map<String, dynamic> json)
      : kind = json['kind'] as String?,
        id = json['id'] as String?,
        etag = json['etag'] as String?,
        selfLink = json['selfLink'] as String?,
        volumeInfo = json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
        saleInfo = json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
        accessInfo = json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
        searchInfo = json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
        super(
          bookId: json['id'] as String,
          image: json['volumeInfo']?['imageLinks']?['thumbnail'] as String?,
          title: json['volumeInfo']?['title'] as String? ?? '',
          authourName: json['volumeInfo']?['authors'] != null
              ? (json['volumeInfo']['authors'][''] as List<dynamic>).join(', ')
              : null,
          price: json['saleInfo']?['listPrice']?['amount'] as num? ?? 0,
          rating: json['volumeInfo']?['averageRating'] as num?,
        );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
        // These fields are from BookEntities
        'bookId': bookId,
        'image': image,
        'title': title,
        'authourName': authourName,
        'price': price,
        'rating': rating,
      };
}
