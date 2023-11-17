import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
       double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return
     Scaffold(
      body: Stack(
        
        children: [Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/10c882fc16d3559d0708d17c1c9e9b83.png"),fit: BoxFit.cover)
          ),),
           Column(
            children: [
                       Container(
     width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(
      color: Color(0x99000000)),
      
      child: Stack (
       children: [
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding:EdgeInsets.only(top: screenHeight/9.023,left: screenWidth/16.3),
            child: InkWell(onTap: () {
              context.go('/friendList');
            },child: Image.asset("assets/Frame 12.png")),),
            Padding(padding: EdgeInsets.only(top: screenHeight/11,),
            child: const Text("Invite Friends",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800,color: Color(0xFFF9F9F9)),) ,)

           , Padding(padding: EdgeInsets.only(right: screenWidth/16.3,top: screenHeight/9.023),child: Image.asset("assets/Frame 13.png") ,)
          ],
        )
         ,   Padding(padding: EdgeInsets.only(top: screenHeight/3.86,
          
          ),
          child: Container(
          
            width: screenWidth,
             color: const Color(0x99000000),
             child: Column(
              children: [
                Center(child: Image.asset("assets/zyro-image.png"),),

                Padding(padding: EdgeInsets.fromLTRB(screenWidth/4.166, 18, screenWidth/4.166, 0),

                child:const Text("Invite Friends",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),) ,),
              
                Padding(padding:EdgeInsets.fromLTRB(screenWidth/7.07, 15, screenWidth/7.07, 0),
              
                child:const Text("Sign up a friend with your referral",style: 
     
                  TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),) ,),
     
                   Padding(padding: EdgeInsets.fromLTRB(screenWidth/10.7, 0, screenWidth/10.7, 0),
     
                   child:const Text("code and earn RIIDE and/or free rides.",style: 
     
                    TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),) ,),
     
     Padding(padding: const EdgeInsets.only(top: 36),child: 
     
      MaterialButton(height: 50,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
     
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
         onPressed: () {

         },
         color: const Color(0xFF161616),minWidth:screenWidth/2,child: const Text("Share your invite code",style:TextStyle(color: Colors.white) ,),),),
     
     Padding(padding: const EdgeInsets.only(top: 15),
     
     child:   MaterialButton(height: 50,padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
     
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
     onPressed: () {
     
     context.go('/FriendList');
      
                         },
     color: const Color(0xff4ce5b1),minWidth:screenWidth/2,child: const Text("Invite Friends",style: TextStyle(color: Colors.white),),))
                        ],
                      ),
          
                    ),   
                   )
                 ],
                ),
               )       
             ],
           ),
        ]
      )
    );
  }
}