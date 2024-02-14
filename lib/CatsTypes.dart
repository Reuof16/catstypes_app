import 'package:flutter/material.dart';
import 'package:responsive_app/CatModel.dart';

import 'Cat1.dart';
import 'Favorite_Screen.dart';

class CatsTypes extends StatefulWidget {
  CatsTypes({super.key});

  var height, width;
  @override
  State<CatsTypes> createState() => _CatsTypesState();
}

class _CatsTypesState extends State<CatsTypes> {
  // List assetsData = [
  //   "assets/cat1.jpg",
  //   "assets/cat2.jpg",
  //   "assets/cat3.jpg",
  //   "assets/cat4.jpg",
  //   "assets/cat5.jpg",
  //   "assets/cat6.jpg",
  //   "assets/cat7.jpg",
  //   "assets/cat8.jpg",
  //   "assets/cat9.jpg",
  //   "assets/cat10.jpg",
  //   "assets/cat11.jpg",
  //   "assets/cat12.jpg",
  // ];
  // List titles =[
  //   "Maine Coon",
  //   "Bengal Cat",
  //   "American Wirehair",
  //   "Persian Cat",
  //   "British Shorthair",
  //   "Thai Siamese",
  //   "Ragdoll",
  //   "Munchkin Cat",
  //   "Norwegian Forest Cat",
  //   "Scottish Fold",
  //   "Siberian Cat",
  //   "American Shorthair",
  // ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:  Container(
          width: width,
          color: Color(0xff3559E0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff3559E0),
                ),
                width: width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 75,
                        left: 20,
                        right: 20,
                        bottom: 10
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Types Of Cats',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35,
                                  fontFamily: 'Kalam',
                                  color: Colors.white
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoriteScreen()));
                            },
                            child: Icon(Icons.favorite_border_sharp,
                              size: 30,
                              color: Color(0xffAC0436),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  //  height: height
                  width: width,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        mainAxisSpacing: 20,
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: catList.length,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cat1(index)));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 0,
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 170,
                                  width: 170,
                                  child: Image(image: AssetImage(catList[index].imgPath,),
                                    fit: BoxFit.fitWidth,
                                    width: 100,
                                  ),
                                ),
                                Text(catList[index].catName,
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "Kalam",
                                    color: Color(0xff3559E0),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],

                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

