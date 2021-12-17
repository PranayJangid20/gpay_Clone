import 'package:flutter/material.dart';
import 'package:gpay_clone/activity/acc_src.dart';
import 'package:gpay_clone/widg/search_scr.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

var isAll = false;

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.black87,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MaterialButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        minWidth: 100,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Searc_Act()));
        },
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        color: Colors.blueAccent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "New payment",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('My Accounts'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Rewards'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Stack(children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.blueAccent,
                    ),
                    IconButton(
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Account()))
                            },
                        icon: const Icon(
                          Icons.account_circle,
                          size: 40,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              Container(
                child: Image.asset('assets/gpay_icon.png'),
              )
            ],
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.6,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0XFF242424),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Center(
                        child: Container(
                      margin: EdgeInsets.all(10),
                      height: 5,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10)),
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    color: Color(0XFF242424),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        People(),
                        BaB(),
                        Promo(),
                        Other(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ]),
    ),
      );
  }
}

class BaB extends StatefulWidget {
  @override
  _BaBState createState() => _BaBState();
}

class _BaBState extends State<BaB> {
  @override
  Widget build(BuildContext context) {
    var iconSZ = (MediaQuery.of(context).size.width * 20.0) / 100;
    List<Padding> wPep = [];
    for (int i = 0; i < 12; i++) {
      wPep.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Icon(
                Icons.account_circle,
                size: iconSZ,
                color: Colors.orange,
              ),
            ),
            Text(
              'bd${i + 1}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ));
    }
    return Container(
      margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Bussinesses & bills',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        Wrap(
          children: wPep,
        )
      ]),
    );
  }
}

class Promo extends StatefulWidget {
  @override
  _PromoState createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Promotions',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        Wrap(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Icon(
                    Icons.wallet_giftcard_outlined,
                    size: 90,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  'Reward',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Icon(
                    Icons.card_giftcard_sharp,
                    size: 90,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  'Offer',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Icon(
                    Icons.card_giftcard_sharp,
                    size: 90,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  'Referrals',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Show Transaction History",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "View account balance",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    var iconSZ = (MediaQuery.of(context).size.width * 20.0) / 100;
    List<Padding> wPep = [];
    for (int i = 0; i < 11; i++) {
      wPep.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Icon(
                Icons.account_circle,
                size: iconSZ,
                color: Colors.grey,
              ),
            ),
            Text(
              'id${i + 1}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ));
    }

    wPep.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {
              print(isAll),
              setState(() {
                isAll = true;
              })
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Icon(
                Icons.add_circle,
                size: iconSZ,
                color: Colors.grey,
              ),
            ),
          ),
          Text(
            'More',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ));

    List<Padding> MaxwPep = [];
    for (int i = 0; i < 20; i++) {
      MaxwPep.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Icon(
                Icons.account_circle,
                size: iconSZ,
                color: Colors.grey,
              ),
            ),
            Text(
              'id${i + 1}',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ));
    }
    MaxwPep.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {
              print(isAll),
              setState(() {
                isAll = false;
              })
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Icon(
                Icons.remove_circle,
                size: iconSZ,
                color: Colors.grey,
              ),
            ),
          ),
          Text(
            'More',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ));

    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'People',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Wrap(
            children: isAll == true ? MaxwPep : wPep,
          ),
        ],
      ),
    );
  }
}
