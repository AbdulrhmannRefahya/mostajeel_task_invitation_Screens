import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FriendsList extends StatelessWidget {
  final List<String>items;
  const FriendsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration:BoxDecoration(image: DecorationImage(image:AssetImage("assets/10c882fc16d3559d0708d17c1c9e9b83.png")
            ,fit:BoxFit.cover )
            ),
          ),
          Column(
            children: [
                                  Container(
     width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
      color: Color(0x99000000)
      ),
      child:Stack(
        children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding:EdgeInsets.only(top: screenHeight/9.023,left: screenWidth/16.3),
            child: InkWell(onTap: () {
              context.pop();
            },
            child: Image.asset("assets/Frame 12.png")
            )
            ,
            ),
            Padding(padding: EdgeInsets.only(top: screenHeight/11,),
            child: Text("Invite Friends",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800,color: Color(0xFFF9F9F9)),) ,),

            
           Padding(padding: EdgeInsets.only(right: screenWidth/16.3,top: screenHeight/9.023),child: Image.asset("assets/Frame 13.png") ,)
          ],
        )
         , Padding(padding: EdgeInsets.only(top: screenHeight/3.86,
          
          ),
          child: Container(
          
            width: screenWidth,
             color: Color(0x99000000),
             child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: screenHeight/14,left: screenWidth/19.7,right: screenWidth/19.7),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(hintText:"Search here..",hintStyle: TextStyle(color: Colors.white),suffix: Icon(Icons.mic,color: Colors.grey,),
                    filled: true,fillColor: Color(0xff161616),border: OutlineInputBorder(borderRadius: BorderRadius.circular(100),),
                    prefixIcon: Icon(Icons.search,color: Colors.green,
                    )
                  ),
                ),),
                Padding(padding: EdgeInsets.only(top: screenHeight/16,left: screenWidth/19.7,right: screenHeight/19.7),
                child: Container(width: screenWidth,height: screenHeight/2,
                  child: ListView.builder(scrollDirection: Axis.vertical,itemCount: items.length,prototypeItem: ListTile(title: Text(items.first)),itemBuilder: (context, index) {
                    
                    return ListTile(
                      title: Text(items[index],style: TextStyle(color: Colors.white),
                    ),
                    leading: CircleAvatar(child:Text(items[index],style: TextStyle(color: Colors.green),),),
                    subtitle: Text(items[index],style: TextStyle(color: Colors.green),),
                       );
                      },
                     ),
                    ),
                   )
                  ],
                 ),
                ),
               )
              ],
             ) ,
            )
           ],
          )
        ],
      ),
    );
  }
}