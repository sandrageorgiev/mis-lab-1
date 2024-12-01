import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/clothes_model.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Clothes;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(171, 169, 169, 1),
          leading: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(
                Icons.arrow_back_ios,
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10.0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity, // Make container full width
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black.withOpacity(0.2), width: 2),
                ),
                child: ClipRRect(
                  // Add ClipRRect to apply border radius to image
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    arguments.image,
                    height: 500,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      arguments.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$${arguments.price}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        arguments.description,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
