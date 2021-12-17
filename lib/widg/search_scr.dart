import 'package:flutter/material.dart';

class Searc_Act extends StatefulWidget {
  @override
  _Searc_ActState createState() => _Searc_ActState();
}

class _Searc_ActState extends State<Searc_Act> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            backgroundColor: Color(0XFF242424),
            title: Container(
              child:TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(

                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white60),
                    contentPadding: EdgeInsets.all(0.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white60),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white60),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            actions: [
              PopupMenuButton(icon: Icon(Icons.more_vert, color: Colors.white,), itemBuilder: (BuildContext context) => <PopupMenuEntry>[

                const PopupMenuItem(child: Text('Refresh')),
                const PopupMenuItem(child: Text('Report')),
              ],),

            ],
            bottom: const TabBar(
              indicatorColor: Colors.blueAccent,
              tabs: [
                Tab(text: 'Peoples & bills',icon: null,),
                Tab(text: 'Bussiness',icon: null,),
              ],
            ),
          ),
          body:TabBarView(
            children: [
              PAB(),
              Bussiness()
            ],
          ),
        ),
      ),
    );
  }
}

class PAB extends StatefulWidget {
  @override
  _PABState createState() => _PABState();
}

class _PABState extends State<PAB> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('Recharge & pay bills',style: TextStyle(color: Colors.white, fontSize: 16),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width*40)/100,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, style: BorderStyle.solid,),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(Icons.phone_android,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Recharge",style: TextStyle(color: Colors.white),),
                    ],
                  )),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width*40)/100,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, style: BorderStyle.solid,),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.receipt_long,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Bill Payment",style: TextStyle(color: Colors.white),),
                    ],
                  )),
                )
              ],
            ),
            SizedBox(height: 10,),
            Text('Transfer Money',style: TextStyle(color: Colors.white, fontSize: 16),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Icon(Icons.account_balance, color: Colors.white,size: 50,),
                    ),
                    Text("To Bank", style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Icon(Icons.account_balance_wallet_rounded, color: Colors.white,size: 50,),
                    ),
                    Text("To Wallet", style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Icon(Icons.phone, color: Colors.white,size: 50,),
                    ),
                    Text("Phone", style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Icon(Icons.qr_code_scanner, color: Colors.white,size: 50,),
                    ),
                    Text("With QR", style: TextStyle(color: Colors.white),)
                  ],
                )
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

class Bussiness extends StatefulWidget {
  @override
  _BussinessState createState() => _BussinessState();
}

class _BussinessState extends State<Bussiness> {
  @override
  Widget build(BuildContext context) {
    return Center(child:BusinessBanner());
  }
}

class BusinessBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: MediaQuery.of(context).size.height*0.1,
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Buy ICICI FASTag & get\nflat ₹ 100 cashback.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[600],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.drive_eta_rounded,
                        color: Colors.blue[700],
                        size: 40,
                      ),
                      Icon(
                        Icons.local_gas_station,
                        color: Colors.blue[200],
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}