import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF242424),
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Colors.transparent,
        actions: const [
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
        height: 100,
         width: double.infinity,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text("PRANAY JANGID",style: TextStyle(color: Colors.white,fontSize: 20),),
                   SizedBox(height: 10,),
                   Text("+91 94XXXXXXXX",style: TextStyle(color: Colors.white60,fontSize: 16),),
                   Text("myupiid@okbank",style: TextStyle(color: Colors.white60,fontSize: 16),),
                 ],

               ),
             ),
             Stack(
               children: [Padding(
                 padding: const EdgeInsets.only(right: 80),
                 child: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle,color: Colors.white,size: 90,)),
               ),
               Align(

                 alignment: Alignment.bottomRight,
                 child: CircleAvatar(
                   backgroundColor: Colors.black54,
                   child: Icon(Icons.qr_code,color:Colors.white),
                 ),
               )
               ]
             ),

           ],
         ),
      ),
    );
  }
}
