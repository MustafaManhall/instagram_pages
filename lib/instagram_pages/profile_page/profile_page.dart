import 'package:flutter/material.dart';
import 'package:instagram_pages/instagram_pages/home_page/home_page.dart';
import '../explore_page/explore_page.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
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
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => home_page())
                  );
                },
                child: Icon(Icons.home_filled,
                  color: Colors.white,
                  size: 30,),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => explore_page())
                  );
                },
                child: Icon(Icons.search_rounded,color: Colors.white,
                  size: 30,),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => home_page())
                  );
                },
                child: Icon(Icons.favorite,color: Colors.white,
                  size: 30,),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => profile_page())
                  );
                },
                child: Icon(Icons.person_outline,color: Colors.white,
                  size: 30,),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => home_page())
                        );
                      },
                      child: Icon(Icons.arrow_back_ios,
                        size: 30,),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => profile_page())
                        );
                      },
                      child: Icon(Icons.notifications_active,
                        size: 30,),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  profile_info(
                      "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                      "Zahara",
                      "USA"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  acconut_info(60,"Photo"),
                  acconut_info(132,"Followers"),
                  acconut_info(1000,"Following"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25)),
                  child: GridView.count(
                    padding: EdgeInsets.all(10),
                    crossAxisCount: 2,
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
                    ],
                  ),
                ),
              )
            ],
          ),
        )
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
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: NetworkImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container profile_info(
      String avatarimage, String acconutname, String acconutlocation) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 60,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(avatarimage),
          ),
          SizedBox(
            height: 10,
          ),
          Text(acconutname,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Text(acconutlocation,
              style: TextStyle(color: Colors.black54, fontSize: 16)),
        ],
      ),
    );
  }

  Column acconut_info(int numper,String info){
    return Column(
      children: [
        Text(
          "$numper",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(info,
            style:
            TextStyle(color: Colors.black54, fontSize: 20)),
      ],
    );
  }
}
