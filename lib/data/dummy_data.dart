import 'package:api_integration1/models/category.dart';

List<String> title = ['cat facts', 'jokes'];

final List<Category> category_title = List.generate(
    title.length, (index) => Category(title: title[index], index: index));
