import 'package:flutter/material.dart';
import '../../Models/Product Model.dart';
import '../../Widgets/Category Item.dart';
import '../../Widgets/Product Item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> categories = [
    "All",
    "Fashion",
    "Home & Kitchen",
    "Sports & Outdoor",
    "Health & Beauty",
    "Kids & Toys",
    "Education",
    "Automotive",
    "Education",
    "Books & Stationery",
    "Electronics"
  ];

  List<ProductModel> productList = [
    ProductModel(
        name: 'Blouse',
        price: '60 \$',
        image: 'https://i.pinimg.com/736x/1a/fc/a8/1afca82efc07593d9e9163599060c379.jpg'),
    ProductModel(
        name: 'Book',
        price: '10 \$',
        image: 'https://i.pinimg.com/736x/e8/fd/64/e8fd642f026f7ca3c889d0eea95b0b1c.jpg'),
    ProductModel(
        name: 'Hody',
        price: '80 \$',
        image: 'https://i.pinimg.com/736x/68/c3/82/68c382a627d5b6b2830b4aaf1760083f.jpg'),
    ProductModel(
        name: 'Kitchen sets',
        price: '70 \$',
        image: 'https://i.pinimg.com/736x/df/22/8c/df228c92b12a27acceccfb7428f064d5.jpg'),
    ProductModel(
        name: 'spot',
        price: '50 \$',
        image: 'https://i.pinimg.com/736x/96/1b/7b/961b7b655d26245d8a51e1e47e16082e.jpg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.pinimg.com/736x/d8/ca/62/d8ca6277f22f1f329edc8161b14c2fad.jpg'),
    ProductModel(
        name: 'Sandwich maker',
        price: '100 \$',
        image: 'https://i.pinimg.com/736x/a4/39/a4/a439a4be6175857d19f2fa2a27499e32.jpg'),
    ProductModel(
        name: 'Book',
        price: '15 \$',
        image: 'https://i.pinimg.com/736x/ef/f4/b4/eff4b4f7495c2b264d55648260447bca.jpg'),
    ProductModel(
        name: 'Blouse',
        price: '60 \$',
        image: 'https://i.pinimg.com/736x/1a/fc/a8/1afca82efc07593d9e9163599060c379.jpg'),
    ProductModel(
        name: 'Book',
        price: '10 \$',
        image: 'https://i.pinimg.com/736x/e8/fd/64/e8fd642f026f7ca3c889d0eea95b0b1c.jpg'),
    ProductModel(
        name: 'Hody',
        price: '80 \$',
        image: 'https://i.pinimg.com/736x/68/c3/82/68c382a627d5b6b2830b4aaf1760083f.jpg'),
    ProductModel(
        name: 'Kitchen sets',
        price: '70 \$',
        image: 'https://i.pinimg.com/736x/df/22/8c/df228c92b12a27acceccfb7428f064d5.jpg'),
    ProductModel(
        name: 'spot',
        price: '50 \$',
        image: 'https://i.pinimg.com/736x/96/1b/7b/961b7b655d26245d8a51e1e47e16082e.jpg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.pinimg.com/736x/d8/ca/62/d8ca6277f22f1f329edc8161b14c2fad.jpg'),
    ProductModel(
        name: 'Sandwich maker',
        price: '100 \$',
        image: 'https://i.pinimg.com/736x/a4/39/a4/a439a4be6175857d19f2fa2a27499e32.jpg'),
    ProductModel(
        name: 'Book',
        price: '15 \$',
        image: 'https://i.pinimg.com/736x/ef/f4/b4/eff4b4f7495c2b264d55648260447bca.jpg'),
    ProductModel(
        name: 'Blouse',
        price: '60 \$',
        image: 'https://i.pinimg.com/736x/1a/fc/a8/1afca82efc07593d9e9163599060c379.jpg'),
    ProductModel(
        name: 'Book',
        price: '10 \$',
        image: 'https://i.pinimg.com/736x/e8/fd/64/e8fd642f026f7ca3c889d0eea95b0b1c.jpg'),
    ProductModel(
        name: 'Hody',
        price: '80 \$',
        image: 'https://i.pinimg.com/736x/68/c3/82/68c382a627d5b6b2830b4aaf1760083f.jpg'),
    ProductModel(
        name: 'Kitchen sets',
        price: '70 \$',
        image: 'https://i.pinimg.com/736x/df/22/8c/df228c92b12a27acceccfb7428f064d5.jpg'),
    ProductModel(
        name: 'spot',
        price: '50 \$',
        image: 'https://i.pinimg.com/736x/96/1b/7b/961b7b655d26245d8a51e1e47e16082e.jpg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.pinimg.com/736x/d8/ca/62/d8ca6277f22f1f329edc8161b14c2fad.jpg'),
    ProductModel(
        name: 'Sandwich maker',
        price: '100 \$',
        image: 'https://i.pinimg.com/736x/a4/39/a4/a439a4be6175857d19f2fa2a27499e32.jpg'),
    ProductModel(
        name: 'Book',
        price: '15 \$',
        image: 'https://i.pinimg.com/736x/ef/f4/b4/eff4b4f7495c2b264d55648260447bca.jpg'),
    ProductModel(
        name: 'Blouse',
        price: '60 \$',
        image: 'https://i.pinimg.com/736x/1a/fc/a8/1afca82efc07593d9e9163599060c379.jpg'),
    ProductModel(
        name: 'Book',
        price: '10 \$',
        image: 'https://i.pinimg.com/736x/e8/fd/64/e8fd642f026f7ca3c889d0eea95b0b1c.jpg'),
    ProductModel(
        name: 'Hody',
        price: '80 \$',
        image: 'https://i.pinimg.com/736x/68/c3/82/68c382a627d5b6b2830b4aaf1760083f.jpg'),
    ProductModel(
        name: 'Kitchen sets',
        price: '70 \$',
        image: 'https://i.pinimg.com/736x/df/22/8c/df228c92b12a27acceccfb7428f064d5.jpg'),
    ProductModel(
        name: 'spot',
        price: '50 \$',
        image: 'https://i.pinimg.com/736x/96/1b/7b/961b7b655d26245d8a51e1e47e16082e.jpg'),
    ProductModel(
        name: 'T shirt',
        price: '20 \$',
        image: 'https://i.pinimg.com/736x/d8/ca/62/d8ca6277f22f1f329edc8161b14c2fad.jpg'),
    ProductModel(
        name: 'Sandwich maker',
        price: '100 \$',
        image: 'https://i.pinimg.com/736x/a4/39/a4/a439a4be6175857d19f2fa2a27499e32.jpg'),
    ProductModel(
        name: 'Book',
        price: '15 \$',
        image: 'https://i.pinimg.com/736x/ef/f4/b4/eff4b4f7495c2b264d55648260447bca.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Categories',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) =>
                  CategoryItem(text: categories[index]),
              separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: productList.length,
              itemBuilder: (context, index) => ProductItem(
                  image: productList[index].image,
                  name: productList[index].name,
                  price: productList[index].price),
            ),
          ),
        ],
      ),
    );
  }
}