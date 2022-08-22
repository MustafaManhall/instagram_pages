import 'package:flutter/material.dart';
import 'package:instagram_pages/instagram_pages/explore_page/explore_page.dart';
import '../profile_page/profile_page.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
                    MaterialPageRoute(builder: (context) => profile_page(
                        profileimage: "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                      Name: "MUstafa",
                    )));
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
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/2.png",
                  height: 50,
                  width: 150,
                ),
                SizedBox(
                  width: 120,
                ),
                Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
                Icon(
                  Icons.inbox_rounded,
                  size: 30,
                ),
              ],
            ),
          ),
          Row(
            children: [
              story_info(
                  "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                  "Mustafa"),
              story_info(
                  "https://as1.ftcdn.net/v2/jpg/01/16/24/44/1000_F_116244459_pywR1e0T3H7FPk3LTMjG6jsL3UchDpht.jpg",
                  "Zahra"),
              story_info(
                  "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                  "Mustafa"),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 2,
            width: 350,
            color: Colors.black54,
          ),
          Expanded(
            child: SizedBox(
              height: 500,
              child: ListView(
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
                children: [
                  post(),
                  post(),
                  post(),
                  post(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column story_info(String accountphoto, String accountname) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(accountphoto),
            ),
          ),
        ),
        Text(
          accountname,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row accont_info(String avatar, String name, String location) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => profile_page(
                      profileimage: avatar,
                      Name:name,
                  )));
            },
            child: CircleAvatar(
              maxRadius: 25,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(avatar),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => profile_page(
                          profileimage: "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                          Name: "MUstafa",
                        )));
                  },
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => profile_page(
                            profileimage: "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                          Name: "MUstafa",
                        )));
                  },
                  child: Text(
                    location,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Container postimage(String url) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Image.network(
            url,
            width: 400,
            height: 350,
            fit: BoxFit.cover,
          ),
        ));
  }

  Container post() {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            accont_info(
                "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg",
                "Mustafa",
                "UAE"),
            SizedBox(
              height: 10,
            ),
            postimage(
                "https://st2.depositphotos.com/1104517/11967/v/950/depositphotos_119675554-stock-illustration-male-avatar-profile-picture-vector.jpg"),
            Text(
              "1234 Likes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
