import 'package:flutter/material.dart';
import 'package:flutter_shoe/model/paint.dart';
import 'package:flutter_shoe/model/shoe_model.dart';
import 'package:flutter_shoe/screen/detail_screen.dart';

class ListView1 extends StatelessWidget {
  const ListView1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shoeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Detail(index)));
                  },
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.3,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Positioned(
                          right: 30,
                          top: -50,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 20),
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(shoeList[index].logo)),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      width: 120,
                                      height: 200,
                                      child:
                                          Image.asset(shoeList[index].shoImage))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 100),
                                child: Text(
                                  shoeList[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 100),
                                child: Text(
                                  ' \$ ${shoeList[index].price.toString()}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                right: 35,
                child: ClipPath(
                  clipper: MyCustomClipper2(),
                  child: Container(
                    width: 60,
                    height: 50,
                    color: Colors.greenAccent,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
