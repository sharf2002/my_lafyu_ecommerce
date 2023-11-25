import 'package:dio/dio.dart';
import 'package:my_lafyu_ecommerce/features/home/data/models/flash_sale_model.dart';

class FlashSaleRepo{
  final dio = Dio();
  Future<FlashSaleModel> getFlashSaleData() async{
    Response response = await dio.get('https://student.valuxapps.com/api/products?category_id=40');
    final data = FlashSaleModel.fromJson(response.data);
    return data;
}
}