import 'package:flutter/material.dart';

import 'CatModel.dart';

class Cat1 extends StatefulWidget {



  int index;
  Cat1(this.index);

  @override
  State<Cat1> createState() => _Cat1State();
}

class _Cat1State extends State<Cat1> {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children:[
                  Container(
                    height: 550,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(catList[widget.index].imgPath),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15 ,
                      top: 50,
                    ),
                    child: IconButton(onPressed:(){
                      Navigator.pop(context);

                    },
                      icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children:
                [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                          top: 30
                      ),
                      child: Text(
                        "${catList[widget.index].catName}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          fontFamily: "Inter",
                          color: Color(0xff3559E0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: IconButton(
                        onPressed: ()
                        {
                          setState(() {
                                catList[widget.index].isFavorite= ! catList[widget.index].isFavorite;
                          });

                        },
                        icon: Icon(
                            catList[widget.index].isFavorite == true ? Icons.favorite:Icons.favorite_border,
                          color: Colors.red,
                          size: 25,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right:250 ,
                    top: 10
                ),
                child:Text(
                  catList[widget.index].Des1,
                    style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Inter",
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left:17 ,
                  top: 20,
                ),
                child: Text(
                  catList[widget.index].Des,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 300,
                  top: 10,
                ),
                child: Text(
                  "Main info",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Inter",
                      color: Color(0xff3559E0),
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 275,
                  top: 10,
                ),
                child: Text(
                  "Origin :     USA",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Inter",
                    color: Colors.black87,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                ),
                child: Text(
                  "Coat Pattern :     Variety of patterns, but not colorpoint ",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Inter",
                    color: Colors.black87,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 180,
                  top: 10,
                ),
                child: Text(
                  "Coat Lenght :     Longhair",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Inter",
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ) ,
    );

  }
}
