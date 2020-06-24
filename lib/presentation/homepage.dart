import 'dart:ui';

import 'package:budsnroses/domain/shoppingcart.dart';
import 'package:budsnroses/presentation/carousel.dart';
import 'package:budsnroses/presentation/productpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myappbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20),
              CircleAvatar(),
              SizedBox(height: 10),
              Divider(),
              Text('Categories'),
              SizedBox(height: 10),
              Text('Occasions'),
              SizedBox(height: 10),
              Text('Profile'),
              SizedBox(height: 10),
              Text('Contact Us'),
            ]),
          ),
        ),
        body: Column(
          children: [
            MyCarousel(),
            Flexible(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    title: Text('New Arrivals'),
                    automaticallyImplyLeading: false,
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 200,
                      width: 300,
                      child: FutureBuilder(
                        future: Firestore.instance
                            .collection('products')
                            .getDocuments(),
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.documents.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        Item item = Item(
                                            snapshot.data.documents[index]
                                                .data['name'],
                                            snapshot.data.documents[index]
                                                .data['price'],
                                            snapshot.data.documents[index]
                                                .data['image-location']);
                                        return ProductPage(
                                          item: item,
                                        );
                                      },
                                    ));
                                  },
                                  child: Stack(children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 5, 1, 5),
                                      child: Image.network(snapshot
                                          .data
                                          .documents[index]
                                          .data['image-location']),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            snapshot.data.documents[index]
                                                .data['name'],
                                            textAlign: TextAlign.left,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(snapshot
                                                  .data
                                                  .documents[index]
                                                  .data['price']),
                                              // SizedBox(width: 40),
                                              // FloatingActionButton(
                                              //   mini: true,
                                              //   heroTag: snapshot.data.documents[index].data['name'],
                                              //   tooltip: 'Add to Cart',
                                              //     onPressed: null,
                                              //     child: Icon(
                                              //         Icons.add_shopping_cart))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                );
                              },
                            );
                          }
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ),
                  SliverAppBar(
                    title: Text('Valentine collection'),
                    automaticallyImplyLeading: false,
                    pinned: true,
                  ),
                  SliverGrid(
                    delegate: SliverChildListDelegate([
                      Container(width: 200, height: 200, color: Colors.yellow),
                      Container(width: 200, height: 200, color: Colors.red),
                      Container(width: 200, height: 200, color: Colors.blue),
                      Container(
                          width: 200, height: 200, color: Colors.blueAccent),
                      Container(
                          width: 200, height: 200, color: Colors.yellowAccent),
                      Container(
                          width: 200, height: 200, color: Colors.redAccent),
                      Container(width: 200, height: 200, color: Colors.yellow),
                      Container(width: 200, height: 200, color: Colors.red),
                      Container(width: 200, height: 200, color: Colors.blue),
                      Container(
                          width: 200, height: 200, color: Colors.blueAccent),
                      Container(
                          width: 200, height: 200, color: Colors.yellowAccent),
                      Container(
                          width: 200, height: 200, color: Colors.redAccent),
                    ]),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
