import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:furniture_app/util/data.dart';
import 'package:furniture_app/widgets/badge.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Center(
            child: IconBadge(
              icon: Feather.getIconData("shopping-cart"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),

      body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[

              SizedBox(height: 10),

              Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "${furnitures[0]["img"]}",
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Positioned(
                      right: -10.0,
                      bottom: 3.0,
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: Colors.white,
                        shape: CircleBorder(),
                        elevation: 4.0,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Feather.getIconData("heart"),
                            color: Theme.of(context).accentColor,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Text(
                "${furnitures[0]["name"]}",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "\$550.00",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 30),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Sed porttitor lectus nibh. Cras ultricies ligula "
                    "sed magna dictum porta. Praesent sapien massa, "
                    "convallis a pellentesque nec, egestas non nisi. "
                    "Lorem ipsum dolor sit amet, consectetur adipiscing "
                    "elit. Nulla porttitor accumsan tincidunt. "
                    "Curabitur arcu erat, accumsan id imperdiet et, "
                    "porttitor at sem.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Photos",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: furnitures.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map furniture = furnitures.reversed.toList()[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context){
                                return Details();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${furniture["img"]}",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 10),

            ],
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange[200],
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Feather.getIconData("plus"),
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
