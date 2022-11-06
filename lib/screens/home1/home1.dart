import 'package:flutter/material.dart';

import '../../sheard/component.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required  this.email}) : super(key: key);

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: ''),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_bag_outlined,
        ),
        label: ''),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        label: ''),
  ];
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            'https://www.biography.com/.image/t_share/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(child:
                      Text(
                          email,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ))
                    ],
                  ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: bottomItems,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              const Text(
                'categories',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, items) => buildItem(),
                  separatorBuilder: (context, items) => const SizedBox(
                    width: 10.0,
                  ),
                  itemCount: 12,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                children: const [
                  Text(
                    'Best selling',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 130.0),
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.grey, fontSize: 20.0),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 400.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Image(
                              height: 250.0,
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/I/81nC4u9eYfL._UY445_.jpg')),
                          Text(
                            'Leather ',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'lay hater',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            '\$450',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 400.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Image(
                              height: 250.0,
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/I/81nC4u9eYfL._UY445_.jpg')),
                          Text(
                            'Leather ',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'lay hater',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            '\$450',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
