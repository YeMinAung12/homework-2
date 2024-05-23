import 'package:flutter/material.dart';
import 'package:flutter_shoe/model/paint.dart';
import 'package:flutter_shoe/model/shoe_model.dart';

class Detail extends StatefulWidget {
  int index;
  Detail(this.index);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  Color color3 = Colors.white;
  Color color4 = Colors.white;
  Color bgColor = Colors.blue;
  Color clColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            'CATEGORIES',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: bgColor,
        body: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Stack(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: MyCustomClipper3(),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.9,
                      color: Colors.white,
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 150, left: 20, right: 20, bottom: 100),
                        child: SizedBox(
                          height: 360,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 230),
                                child: Text(
                                  shoeList[widget.index].name,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    child: Text('??? reviews'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 220),
                                child: Text(
                                  'DETAILS',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(shoeList[widget.index].detail),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        bgColor = Colors.blue;
                                        color1 = Colors.black;

                                        color2 = Colors.white;
                                        color3 = Colors.white;
                                        color4 = Colors.white;
                                        setState(() {});
                                      },
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 14,
                                            backgroundColor: color1,
                                          ),
                                          Positioned(
                                            right: 1.5,
                                            bottom: 1.5,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor: Colors.blue,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        bgColor = Colors.green;
                                        color2 = Colors.black;
                                        color1 = Colors.white;

                                        color3 = Colors.white;
                                        color4 = Colors.white;
                                        setState(() {});
                                      },
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 14,
                                            backgroundColor: color2,
                                          ),
                                          Positioned(
                                            right: 1.5,
                                            bottom: 1.5,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor: Colors.green,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        bgColor = Colors.brown;
                                        color3 = Colors.black;
                                        color1 = Colors.white;
                                        color2 = Colors.white;

                                        color4 = Colors.white;
                                        setState(() {});
                                      },
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 14,
                                            backgroundColor: color3,
                                          ),
                                          Positioned(
                                            right: 1.5,
                                            bottom: 1.5,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor: Colors.brown,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        bgColor = Colors.red;
                                        color4 = Colors.black;
                                        color1 = Colors.white;
                                        color2 = Colors.white;
                                        color3 = Colors.white;

                                        setState(() {});
                                      },
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 14,
                                            backgroundColor: color4,
                                          ),
                                          Positioned(
                                            right: 1.5,
                                            bottom: 1.5,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor: Colors.red,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 80,
                      top: -10,
                      child: SizedBox(
                          width: 250,
                          height: 150,
                          child: Image.asset(shoeList[widget.index].shoImage)))
                ],
              ),
              Positioned(
                  bottom: -5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 20),
                              color: Colors.black26,
                              spreadRadius: 20,
                              blurRadius: 18),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text('Price'),
                              Text(
                                '\$ ${shoeList[widget.index].price.toString()}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Add Card',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ))
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
