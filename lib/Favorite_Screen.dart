import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/CatModel.dart';

class FavoriteScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3559E0),
        title: Text(
          'Favorite Cats',
              style: TextStyle(
            fontFamily: 'Kalam',
                color: Colors.white,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
           Expanded(
             child: ListView.separated(
               physics: BouncingScrollPhysics(),
                 itemBuilder: (context,index){
                  if(catList[index].isFavorite == true)
                    {
                      return favoriteItem(catList[index]);
                    }
                  else if(index == 0)
                    {
                      return Container(
                        child: Text(
                            'There is no cat in favorites!'
                        ),
                      );
                    }
                 else return Container();
                 },
                 separatorBuilder: (context,index)=>SizedBox(height: 10,),
                 itemCount: catList.length),
           ),
          ],
        ),
      ),
    );
  }
  Widget favoriteItem(CatModel model)=>Container(
    color: Colors.grey[300],
    padding: EdgeInsets.all(8),
    child: Row(
      children:
      [
        Image(
          image: AssetImage(model.imgPath),
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            '${model.catName}',
            style: TextStyle(
              fontSize: 20,
              height: 1.1,
              fontFamily: 'Kalam',
            ),
          ),
        ),
      ],
    ),
  );
}
