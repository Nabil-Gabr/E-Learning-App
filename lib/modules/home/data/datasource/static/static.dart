import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/modules/home/data/models/best_seller_book_item_model.dart';
import 'package:e_learning_app/modules/home/data/models/book_details_item_model.dart';

List<BookDetailsItemModel> bookDetailsItemModel = [
  const BookDetailsItemModel(
      imageUrl: Assets.imagesBookImage,
      titleBook: 'David Wolf',
      subTitle: 'Cold Lake',
      authorName: 'Jeff Carson'
    ),
];

List<BestSellerBookItemModel> bestSellerBookItemModel=[
  const BestSellerBookItemModel(
    imageUrl: Assets.imagesBook1, 
    title: 'Nora Barrett', 
    authorName: 'D. John Nora',
  ),

  const BestSellerBookItemModel(
    imageUrl: Assets.imagesBook2, 
    title: 'Nora Barrett', 
    authorName: 'D. John Nora',
  ),

  const BestSellerBookItemModel(
    imageUrl: Assets.imagesBook3, 
    title: 'Nora Barrett', 
    authorName: 'D. John Nora',
  ),
];
