import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_lafyu_ecommerce/core/constants/colors.dart';
import 'package:my_lafyu_ecommerce/features/home/data/models/category_model.dart';
import 'package:my_lafyu_ecommerce/features/home/data/repository/category_repo.dart';
import 'package:my_lafyu_ecommerce/features/home/data/repository/flash_sale_repo.dart';

import '../../veiw_model/category_list.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);

  List sliderImages = [
    'assets/home_slider/footwear-1838376_640.jpg',
    'assets/home_slider/nike-3957127_640.jpg',
    'assets/home_slider/nike-5126389_640.jpg',
    'assets/home_slider/Promotion Image.png',
    'assets/home_slider/sneakers-8001394_640.jpg',
  ];
  List<Map> flashSale = [
    {
      'image': 'assets/home_flash_sale/image Product.png',
      'text': 'FS - Nike Air\nMax 270 React...',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/home_flash_sale/image Product (1).png',
      'text': 'FS - QUILTED\nMAXI CROS...',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/home_flash_sale/image Product (2).png',
      'text': 'FS - Nike Air\nMax 270 React...',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
  ];
  List<Map> megaSale = [
    {
      'image': 'assets/home_mega_sale/image Product (1).png',
      'text': 'MS - Nike Air\nMax 270 React...',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/home_mega_sale/image Product (2).png',
      'text': 'MS - Nike Air\nMax 270 React...',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/home_mega_sale/image Product (3).png',
      'text': 'MS - Nike Air\nMax 270 React...',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
  ];
  List<Map> recomendedProduct = [
    {
      'image': 'assets/recomended_product/image Product (5).png',
      'text': 'Nike Air Max 270\nReact ENG',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/recomended_product/image Product (3).png',
      'text': 'Nike Air Max 270\nReact ENG',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/recomended_product/image Product (7).png',
      'text': 'Nike Air Max 270\nReact ENG',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
    {
      'image': 'assets/recomended_product/image Product (2).png',
      'text': 'Nike Air Max 270\nReact ENG',
      'price': '\$299,43',
      'oldPrice': '\$534,33',
      'newPrice': '24% Off'
    },
  ];
  List<CategoryListModel> listOfCategories = [
    CategoryListModel(
        name: 'Man Shirt', image: 'assets/home_category/shirt.png'),
    CategoryListModel(name: 'Dress', image: 'assets/home_category/dress.png'),
    CategoryListModel(
        name: 'Man Work \nEquipment',
        image: 'assets/home_category/man bag.png'),
    CategoryListModel(
        name: 'Woman Bag', image: 'assets/home_category/woman bag.png'),
    CategoryListModel(
        name: 'Man Shirt', image: 'assets/home_category/shirt.png'),
  ];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return
      Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                top: true,
                minimum: EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: SearchBar(
                        elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                            return 0;
                          },
                        ),
                        shape:
                            MaterialStateProperty.resolveWith<OutlinedBorder?>(
                          (Set<MaterialState> states) {
                            return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                color: Color(0xffEBF0FF),
                              ),
                            );
                          },
                        ),
                        hintText: 'Search product',
                        hintStyle: MaterialStateProperty.resolveWith(
                          (states) => TextStyle(
                            color: Color(0xff9098B1),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            return Colors.white;
                          },
                        ),
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        leading: Icon(
                          Icons.search_rounded,
                          color: ColorsUtils.blue,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Color(0xff9098B1),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: Color(0xffEBF0FF),
                ),
              ),
              CarouselSlider.builder(
                itemCount: sliderImages.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: widthScreen,
                        child: Image.asset(
                          sliderImages[itemIndex],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Text(
                          'Super Flash Sale \n50% Off',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: SizedBox(
                          height: 41,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                width: 42,
                                height: 41,
                                child: Center(
                                  child: Text(
                                    '08',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                width: 42,
                                height: 41,
                                child: Center(
                                  child: Text(
                                    '34',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ':',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                width: 42,
                                height: 41,
                                child: Center(
                                  child: Text(
                                    '52',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
                options: CarouselOptions(
                  height: heightScreen * (25 / 100),
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.91,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1700),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        'Category',
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'More Category',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                future: CategoryRepo().getCategoryData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting){
                    return Center(child: CircularProgressIndicator(),);
                  }
                  if (snapshot.hasData) {
                    final res = snapshot.data;
                    final data = res!.data;
                    return Container(
                      height: 110,
                      child: ListView.builder(
                        itemCount: data!.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffEBF0FF),
                                  radius: 36,
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.white,
                                    child: Image.network(
                                      data!.data[index].image ?? 'https://www.shutterstock.com/shutterstock/photos/1055269061/display_1500/stock-vector-caution-exclamation-mark-white-red-color-vector-1055269061.jpg',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  data!.data[index].name ?? 'error',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff9098B1),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                  return Text('there is an error ');
                }
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        'Flash Sale',
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                future: FlashSaleRepo().getFlashSaleData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting){
                    return Center(child: CircularProgressIndicator(),);
                  }
                  if (snapshot.hasData) {
                    final res = snapshot.data;
                    final data = res!.data;
                    return Container(
                      height: 238,
                      child: ListView.builder(
                        itemCount: data!.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xffEBF0FF),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      data!.data[index].image?? 'https://www.shutterstock.com/shutterstock/photos/1055269061/display_1500/stock-vector-caution-exclamation-mark-white-red-color-vector-1055269061.jpg',
                                      width: 109,
                                      height: 109,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Text(
                                        data!.data[index].name ?? 'error',
                                        style: TextStyle(
                                          color: Color(0xff223263),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Text(
                                        data!.data[index].price.toString(),
                                        style: TextStyle(
                                          color: Color(0xff40BFFF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        children: [
                                          Text(
                                            data!.data[index].oldPrice.toString(),
                                            style: TextStyle(
                                              color: Color(0xff9098B1),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            data!.data[index].discount.toString(),
                                            style: TextStyle(
                                                color: Color(0xffFB7181),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                  return Text('error');
                }
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        'Mega Sale',
                        style: TextStyle(
                          color: Color(0xff223263),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 238,
                child: ListView.builder(
                  itemCount: megaSale.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xffEBF0FF),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                megaSale[index]['image'],
                                width: 109,
                                height: 109,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  megaSale[index]['text'],
                                  style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  megaSale[index]['price'],
                                  style: TextStyle(
                                    color: Color(0xff40BFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children: [
                                    Text(
                                      megaSale[index]['oldPrice'],
                                      style: TextStyle(
                                        color: Color(0xff9098B1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      megaSale[index]['newPrice'],
                                      style: TextStyle(
                                          color: Color(0xffFB7181),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/recomended_product/image 51.png',
                      height: 206,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recomended\nProduct',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'We recommend the best for you',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                child: GridView.builder(
                  itemCount: recomendedProduct.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 3,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xffEBF0FF),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                recomendedProduct[index]['image'],
                                width: 133,
                                height: 133,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  recomendedProduct[index]['text'],
                                  style: TextStyle(
                                    color: Color(0xff223263),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  recomendedProduct[index]['price'],
                                  style: TextStyle(
                                    color: Color(0xff40BFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children: [
                                    Text(
                                      recomendedProduct[index]['oldPrice'],
                                      style: TextStyle(
                                        color: Color(0xff9098B1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      recomendedProduct[index]['newPrice'],
                                      style: TextStyle(
                                          color: Color(0xffFB7181),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );

  }
}
