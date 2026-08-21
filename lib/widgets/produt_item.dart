

import 'package:flutter/material.dart';

class ProdutItem extends StatelessWidget {
  const ProdutItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(alignment: Alignment.centerLeft,
           child: Container(
            width: 173,
            //height:248,
            padding: EdgeInsets.only(top:25,right: 15,left: 15,bottom: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE2E2E2)),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Center(child: Image.asset('assets/images/banana.png', width: 99,height: 79,
                 )),
                SizedBox(height: 18),
                Text("OrganicBananas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text("7pcs, Priceg",style: TextStyle(
                  color: Color(0xff7C7C7C),
                ),),
                 SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$4.99",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                    Container(
                      padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child:Icon(Icons.add,color: Colors.white,size: 35,)
                    ),
                  ],
                )
              ],
            ),
          ),
          );
  }
}