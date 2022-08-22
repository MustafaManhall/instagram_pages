import 'package:flutter/material.dart';
import '../home_page/home_page.dart';
import '../profile_page/profile_page.dart';

class explore_page extends StatefulWidget {
  const explore_page({Key? key}) : super(key: key);

  @override
  State<explore_page> createState() => _explore_pageState();
}

class _explore_pageState extends State<explore_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => home_page()));
              },
              child: Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => explore_page()));
              },
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => home_page()));
              },
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => profile_page(profileimage: "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                      Name: "MUstafa",)));
              },
              child: Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30,left: 10,right: 10),
            child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(
                    Icons.search_outlined,
                  ),
                  SizedBox(width: 5,),
                  Text("search for something...",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
                ],
              ),
            ),
          ), //search bar
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25)),
              child: GridView.count(
                padding: EdgeInsets.all(10),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                  photo(
                      "https://png.pngtree.com/element_our/20190522/ourlarge/pngtree-real-rose-element-image_1076808.jpg"),
                  photo(
                      "https://image.winudf.com/v2/image1/Y29tLmFuYWRvbHUua2lybWl6aWd1bF9zY3JlZW5fYXJfNF8xNTY0Mjg5ODczXzAyOQ/screen-4.jpg?fakeurl=1&type=.jpg"),
                ],
              ),
            ),
          ),
        ],
      ), //the explore part
    );
  }

  Container photo(String path) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
            width: 5,
            style: BorderStyle.solid,
            color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
