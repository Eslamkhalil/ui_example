import 'dart:ui';

import 'package:flutter/material.dart';

class FoodRecipes extends StatelessWidget {
  const FoodRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: 250,
                  color: Colors.white.withOpacity(0.8),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 30.0, 15, 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(left: 15.0, top: 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            prefixIcon: const Icon(
                              Icons.search_outlined,
                              color: Colors.black,
                            ),
                            hintText: 'search for recipe'),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(
                                color: Colors.amberAccent,
                                width: 3.0,
                                style: BorderStyle.solid),
                          ),
                        ),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'POPULAR RECIPES ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Muli'),
                              ),
                              Text(
                                'THIS WEEK ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Muli'),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0),
                      height: 125,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) => buildListItem(),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 8,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Septmer 7 ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Muli',
                    color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'TODAY ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Muli',
                    color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/spinach_Pasta_close.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0)),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text(
                        'BEST OF',
                        style: TextStyle(
                            fontFamily: 'Muli',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'THE DAY',
                        style: TextStyle(fontFamily: 'Muli',
                          color: Colors.white,

                            fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 80,
                        height: .5,
                        color: Colors.orange,
                      ),

                    ],

                  ),

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListItem() => Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.white),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                    image: AssetImage('assets/images/pasta.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Past',
                    style: TextStyle(fontFamily: 'Muli'),
                  ),
                  Text(
                    'With Chken',
                    style: TextStyle(fontFamily: 'Muli'),
                  ),
                  Divider(height: 5.0, color: Colors.black87, thickness: 10.0),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pasta.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Eslam khalil ',
                        style: TextStyle(fontFamily: 'Muli'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
