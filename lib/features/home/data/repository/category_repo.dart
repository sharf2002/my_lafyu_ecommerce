import 'package:dio/dio.dart';
import 'package:my_lafyu_ecommerce/features/home/data/models/category_model.dart';

class CategoryRepo{
  Future<CategoryModel> getCategoryData()async{
    Response response =await Dio().get('https://student.valuxapps.com/api/categories');


    final data = CategoryModel.fromJson(response.data);
    return data;
  }

}
