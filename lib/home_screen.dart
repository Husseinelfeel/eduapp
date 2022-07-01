import 'dart:ui';

import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentIndex = 0;
  bool dummyLoading = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              top: true,
              right: true,
              left: true,
              child: Container(
                height: 80,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Home Page',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                text: 'Choose Your Course',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: ' right away',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.teal,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.teal,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 48,
              margin: const EdgeInsets.only(left: 22, right: 22),
              padding: const EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Search For your Course,Grade,Training type...',
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Category')
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Botique class')
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Free Course')
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Book store'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Live course')
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 3,
                                spreadRadius: 4,
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('LeaderBoard')
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Row(
                        children: [
                          Text('Recommended course'),
                          Spacer(),
                          Text('More'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'You may also Like ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 12, bottom: 6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 3,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Place Your Image',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Morning textbook',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' 8.5',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5.0, right: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.grey,
                                                size: 12,
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 12, bottom: 6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 3,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Place Your Image',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'English reading',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' 8.0',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5.0, right: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.grey,
                                                size: 12,
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 12, bottom: 6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 3,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Place Your Image',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Morning textbook',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' 8.5',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5.0, right: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.grey,
                                                size: 12,
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 12, bottom: 6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 3,
                                      spreadRadius: 2),
                                ],
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Place Your Image',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Morning textbook',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' 8.5',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5.0, right: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 12,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.grey,
                                                size: 12,
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Today's event"),
                      Spacer(),
                      Text(
                        "View all >",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "join now",
                    style: TextStyle(color: Colors.teal, fontSize: 12),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          blurRadius: 3,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "place your image",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 4,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 4,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 4,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 32,
              child: TabBar(
                onTap: (newIndex){
                  print(newIndex);
                  if(
                  newIndex ==1
                  ){
                    Future.delayed(Duration(seconds: 3),(){
                      setState(() {
                        dummyLoading = true;
                      });
                    });
                  }else{
                    dummyLoading = false;
                  }
                  setState(() {
                    currentIndex = newIndex;

                  });
                },
                unselectedLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.teal,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                isScrollable: true,
                controller: _tabController,
                tabs: [
                  Tab(
                    text: "popular",
                  ),
                  Tab(
                    text: "lecture",
                  ),
                  Tab(
                    text: "test",
                  ),
                  Tab(
                    text: "radio",
                  ),
                  Tab(
                    text: "task",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 24, left: 24, top: 8),
              height: 380,
              child: TabBarView(controller: _tabController, children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 84,

                      child: Row(children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.redAccent[100]),
                            child: Center(
                              child: Text("place image"),
                            ),
                          ),
                          flex: 4,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                               const   Text(
                                    "How haed is it for humans to climb Mount Everst? ",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                   Spacer(),
                                  Row(
                                    children: [
                                      Text("Record",style: TextStyle(color: Colors.grey),),
                                      Spacer(),
                                      Icon(
                                        Icons.favorite,
                                        size: 12,
                                          color: Colors.grey
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        "122",
                                        style: TextStyle(fontSize: 12,color: Colors.grey),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.message,
                                        size: 12,
                                          color: Colors.grey
                                      ),
                                      Text(
                                        "90",
                                        style: TextStyle(fontSize: 12,color: Colors.grey),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.more_horiz,
                                        size: 12,
                                          color: Colors.grey
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                          flex: 11,
                        )
                      ]),
                    );
                  },
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
                !dummyLoading? Center(child: CircularProgressIndicator()): ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 84,

                      child: Row(children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.redAccent[100]),
                            child: Center(
                              child: Text("place image"),
                            ),
                          ),
                          flex: 4,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const   Text(
                                    "How haed is it for humans to climb Mount Everst? ",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Text("Record",style: TextStyle(color: Colors.grey),),
                                      Spacer(),
                                      Icon(
                                          Icons.favorite,
                                          size: 12,
                                          color: Colors.grey
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        "122",
                                        style: TextStyle(fontSize: 12,color: Colors.grey),
                                      ),
                                      Spacer(),
                                      Icon(
                                          Icons.message,
                                          size: 12,
                                          color: Colors.grey
                                      ),
                                      Text(
                                        "90",
                                        style: TextStyle(fontSize: 12,color: Colors.grey),
                                      ),
                                      Spacer(),
                                      Icon(
                                          Icons.more_horiz,
                                          size: 12,
                                          color: Colors.grey
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                          flex: 11,
                        )
                      ]),
                    );
                  },
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
          ),
          selectedItemColor: Colors.green,
          selectedLabelStyle: TextStyle(
            color: Colors.green,
          ),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: 'Subject'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.backup,
                ),
                label: 'Growing'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: 'My'),
          ]),
    );
  }
}
