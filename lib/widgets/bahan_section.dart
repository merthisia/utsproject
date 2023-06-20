import 'package:flutter/material.dart';

class BahanSection extends StatelessWidget{

  // static data for bahan 
  List bahanList = [
    'Daging cincang halus',
    '7 bawang merah',
    '5 bawang putih',
    '1 genggam buncis muda',
    'Cabai sesuai selera',
    'Kecap manis'
  ];
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: bahanList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 
                ? Color(0xFF674AEF) 
                : Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.checklist,
            color: Colors.white, size: 30,
            ),
            ),
            title: Text(bahanList[index]),
            //subtitle: Text("20 mins 50 sec"),
          );
      },
    );
  }
}