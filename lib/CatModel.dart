import 'package:flutter/cupertino.dart';


class CatModel
{
  int catIndex;
  String imgPath;
  String catName;
  bool isFavorite;
  String Des;
  String Des1;


  CatModel(this.catIndex,this.imgPath,this.catName,this.isFavorite,this.Des,this.Des1);

  void favoriteChange() {
    isFavorite = !isFavorite;
  }
}



List<CatModel> catList=
[
  CatModel(0,'assets/cat1.jpg','Maine Coon',false,"Maine Coons are gentle giants with a loving, friendly, and sociable nature. They enjoy being in the middle of the action in your home and do well in families with children, dogs, and other cats. The Maine Coon is a water-loving cat and is the third most popular breed in the United States.","Westren breeds"),
  CatModel(0,'assets/cat2.jpg','Bengal Cat',false,'Often referred to as the "Miniature Leopard" of the domestic cats, the Bengal is a unique breed designed to resemble exotic wild cats such as Ocelots, Margays, and Clouded Leopards. Bengals are active, energetic, and playful kitties who have a lean and muscular body, broad head, relatively short ears, and a long neck.',"Westren breeds"),
  CatModel(0,'assets/cat3.jpg','American Wirehair',false,'The American Wirehair is a highly affectionate and sweet-natured cat known for its even temperament. They make great family pets and tend to be chatty kitties who like to converse with everyone in the household.',"Eastern Breeds"),
  CatModel(0,'assets/cat4.jpg','Persian Cat',false,'Persians are one of the most popular breeds and easily recognizable by their fluffy longhaired coat, flat face, large cheeks, and expressive eyes. They like quiet time with their humans. While they prefer to lounge and rest, they are also known for their surprise bursts of playful activity.',"Westren breeds"),
  CatModel(0,'assets/cat5.jpg','Thai Siamese',false,'Thai Siamese cats form strong bonds with their families and are known for their loyal and affectionate nature. These clever, inquisitive, and incredibly athletic felines love being in the center of all the action. They have big personalities and aren’t afraid to tell you all about it!',"Persian Breeds"),
  CatModel(0,'assets/cat6.jpg','Ragdoll',false,'Ragdolls are blue-eyed beauties known for their affectionate nature and tendency to go “limp like a ragdoll” when carried. They make wonderful family pets and get along well with other cats and dogs.',"Western Breeds"),
  CatModel(0,'assets/cat7.jpg','Munchkin Cat',false,'The Munchkin is a speedy little bundle of joy. This relatively young feline breed is infamous for its short legs, intelligent mind, and friendly, people-oriented demeanor. The characteristic short legs of the Munchkin cats are determined by the Munchkin "M" gene. Sporting either short, plush coats or medium to long silky ones, these energetic kitties come in all coat colors and patterns.',"Western Breeds"),
  CatModel(0,'assets/cat8.jpg','Norwegian Forest Cat',false,"Norwegian Forest Cats are exceptionally loyal companions known for their loving and gentle nature. These intelligent, longhaired beauties love to climb to new heights and observe their environment with their large, expressive eyes.","Western Breeds"),
  CatModel(0,'assets/cat9.jpg','Scottish Fold',false,'Meet the only cat who has been described to resemble an owl: the enchanting Scottish Fold! These captivating felines are known to exhibit an unusually high level of affection and are characterized by the distinctive feature of forward-folded ears. At birth, all kittens will have straight ears. Those who carry the fold gene will begin showing this distinctive feature within 21 days. The rest of the kittens who dont develop the characteristic fold are known Straights. Scottish Folds come all coat colors, lengths, and patterns.',"Western Breeds"),
  CatModel(0,'assets/cat10.jpg','Siberian Cat',false,'Siberian catss are affectionate, highly intelligent, playful, and sociable. These kitties have beautiful semi-longhair coats that change with the seasons. The long locks of the Siberian look their best with weekly care and brushing. Also known as the Siberian Forest Cat or Moscow Semi-Longhair, this cat is Russia’s national animal.',"Western Breeds"),
  CatModel(0,'assets/cat11.jpg','American Shorthair',false,"American Shorthairs are easy-going kitties known for their loyal and loving character. A perfect family cat who enjoys companionship and doesn’t mind busy households with children and other pets.","Westren breeds"),
  CatModel(0,'assets/cat12.jpg','British Shorthair',false,"British Shorthairs make great family pets due to their loyal and devoted nature. They love to snuggle and spend time with their humans, and though they can be a bit shy with new people, they are quick to show their affection once they get to know you!","Eastern Breeds"),

];


