import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/clothes_model.dart';

// Move clothesList outside the class as a constant
List<Clothes> clothesList = [
  Clothes(
    id: 1,
    name: "T-Shirt",
    image:
        "https://static.zara.net/assets/public/801d/5f2e/d94041d088b8/84d1022ea2d2/01277699802-e1/01277699802-e1.jpg?ts=1726132045191&w=850",
    description: "A comfortable cotton T-shirt available in various sizes.",
    price: 20,
  ),
  Clothes(
    id: 2,
    name: "Jeans",
    image:
        "https://static.zara.net/assets/public/d7e6/fe6d/fec14ca08365/a95d32e2b3fc/03607213406-e1/03607213406-e1.jpg?ts=1724772771834&w=824",
    description: "Stylish blue denim jeans with a slim fit design.",
    price: 50,
  ),
  Clothes(
    id: 3,
    name: "Jacket",
    image:
        "https://static.zara.net/assets/public/891c/180e/550e44f98bd2/9b4a7be34b1f/00562723800-e1/00562723800-e1.jpg?ts=1725363115866&w=824",
    description: "A warm and cozy winter jacket, perfect for cold weather.",
    price: 100,
  ),
  Clothes(
    id: 4,
    name: "Dress",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5biZdXlm_-LyiHKMQfEFOPONQ5mlh1JV3PegzIGztrrT4VFnE1pHxr21EeZIKFbOYbwU&usqp=CAU",
    description: "A beautiful evening dress for special occasions.",
    price: 75,
  ),
  Clothes(
    id: 5,
    name: "Sneakers",
    image:
        "https://static.zara.net/assets/public/acac/71da/f5164aa1bf91/8957a4fef795/16441330001-e2/16441330001-e2.jpg?ts=1723199067298",
    description: "Trendy sneakers for casual outings and sports.",
    price: 60,
  ),
];

class ShopHome extends StatelessWidget {
  const ShopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 169, 169, 1),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 24,
            )),
        title: const Text("211033",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // 1 item per row
          // childAspectRatio: 0.50, // Adjust as needed
        ),
        itemCount: clothesList.length,
        itemBuilder: (context, index) {
          final item = clothesList[index];
          return Material(
              color: Colors.white,
              child: InkWell(
                  splashColor: Colors.grey,
                  enableFeedback: true,
                  onTap: () => {
                        Navigator.pushNamed(context, "/shop/details",
                            arguments: Clothes(
                                id: item.id,
                                name: item.name,
                                image: item.image,
                                description: item.description,
                                price: item.price))
                      },
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min, // Avoid extra space
                      children: [
                        // Image at the top
                        Image.network(
                          item.image,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ), // Adjust image size
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Name of the item
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              //Description of the item
                              Text(
                                item.description,
                                style: const TextStyle(
                                  color: Color.fromRGBO(94, 93, 93, 1),
                                ),
                              ),
                              // Price of the item
                              Text("\$${item.price}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )));
        },
      ),
    );
  }
}
