import 'package:flutter/material.dart';
import 'package:flutter_shoe/model/shoe_model.dart';
import 'package:flutter_shoe/screen/detail_screen.dart';

class ListVIew2 extends StatelessWidget {
  const ListVIew2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      child: ListView.builder(
        itemCount: shoeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Detail(index)));
              },
              child: ListTile(
                leading: Image.asset(
                  shoeList[index].shoImage,
                  width: 100,
                  height: 30,
                ),
                title: Text(shoeList[index].name),
                trailing: Text('\$ ${shoeList[index].price.toString()}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
