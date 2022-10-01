import 'package:coffeapp/Util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coffee_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List temp=[];
  List allTypes = [
    [
      'Espresso',
      'lib/images/coffee1.jpg',
      '4.20'
    ],
    [
      'Latte',
      'lib/images/late.jpg',
      '4.00'
    ],
    [
      'Mocha Latte',
      'lib/images/mocha.jpg',
      '4.00'
    ],
    [
      'cuppaccino',
      'lib/images/cupitchino.jpg',
      '5.40'
    ],
    [
      'Vanilla Latte',
      'lib/images/VanillaLatte.jpg',
      '4.50'
    ],
    [
      'Coffee',
      'lib/images/coffe.jpg',
      '3.50'
    ],
    [
      'cuppaccino',
      'lib/images/cippp.jpg',
      '5.00'
    ],
    [
      'cuppaccino',
      'lib/images/cupp.jpg',
      '5.40'
    ],
    [
      'Pistachio Latte',
      'lib/images/Pistachio Latte.jpg',
      '5.40'
    ],
    [
      'Coffee',
      'lib/images/coffee.jpg',
      '3.20'
    ],


    [
      'cuppaccino Remo',
      'lib/images/cuppaccino.jpg',
      '6.40'
    ],
    [
      'cuppaccino GoodDay',
      'lib/images/cup.jpg',
      '4.20'
    ],


  ];
  List Latte= [
    [
      'Latte',
      'lib/images/late.jpg',
      '4.00'
    ],
    [
      'Mocha Latte',
      'lib/images/mocha.jpg',
      '4.00'
    ],
    [
      'Vanilla Latte',
      'lib/images/VanillaLatte.jpg',
      '4.50'
    ],
    [
      'Pistachio Latte',
      'lib/images/Pistachio Latte.jpg',
      '5.40'
    ],
  ];
  List cupp= [
    [
      'cuppaccino',
      'lib/images/cupitchino.jpg',
      '5.40'
    ],
    [
      'cuppaccino Remo',
      'lib/images/cuppaccino.jpg',
      '6.40'
    ],
    [
      'cuppaccino GoodDay',
      'lib/images/cup.jpg',
      '4.20'
    ],
    [
      'cuppaccino',
      'lib/images/cippp.jpg',
      '5.00'
    ],
    [
      'cuppaccino',
      'lib/images/cupp.jpg',
      '5.40'
    ],
  ];
  List cofe =  [
    [
      'Coffee',
      'lib/images/coffee.jpg',
      '3.20'
    ],
    [
      'espresso',
      'lib/images/coffee1.jpg',
      '4.20'
    ],
    [
      'Coffee',
      'lib/images/coffe.jpg',
      '3.50'
    ],
  ];
  List Coffee=[
    [
      'All',
      true
    ],
    [
      'Cuppaccino',
      false
    ],
    [
      'Latte',
      false
    ],
    [
      'Coffee',
      false
    ],


  ];

  String coffeType='all';
  void showLoadingSpinner() {
    showDialog(context: context, builder: (context)
    =>Center(child: CircularProgressIndicator()));
    Future.delayed(Duration(seconds: 2), ()=>Navigator.pop(context));

  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    Coffee[0][0] == true;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    temp = allTypes;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      // appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
          child: Icon(Icons.person),)

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: ""
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: ""
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
              label: ""
          ),
        ],
      ),
      body: ListView(
        // shrinkWrap: true,
        children: [
          //title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Find the best coffee for you",
            style:GoogleFonts.bebasNeue(
                fontSize: 56.0,
            ),

            ),
          ),
          SizedBox(
            height:20
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              cursorColor: Colors.orange,
              onChanged: (value){
                if(value.contains('C')|| value.contains('c')){
                  setState(() {
                    temp = cofe+cupp;
                    for(int i=0; i<Coffee.length;i++){
                      Coffee[i][1] = false;
                    }
                    Coffee[1][1] = true;
                    Coffee[3][1] = true;
                  });
                }else if(value.contains('Cup')|| value.contains('cupp')){
                  setState(() {
                    temp = cupp;
                    for(int i=0; i<Coffee.length;i++){
                      Coffee[i][1] = false;
                    }
                    Coffee[1][1] = true;
                  });
                }else if(value.contains('Cof')||value.contains('Coffee')|| value.contains('coffee')){
                  setState(() {
                    temp = cofe;
                    for(int i=0; i<Coffee.length;i++){
                      Coffee[i][1] = false;
                    }
                    Coffee[3][1] = true;
                  });
                }else if(value.contains('L')|| value.contains('l')){
                  setState(() {
                    temp = Latte;
                    for(int i=0; i<Coffee.length;i++){
                      Coffee[i][1] = false;
                    }
                    Coffee[2][1] = true;
                  });
                }else{
                  setState(()=>temp = []);
                  for(int i=0; i<Coffee.length;i++){
                    Coffee[i][1] = false;
                  }
                }
              },
              decoration: InputDecoration(
                fillColor: Colors.grey[800],
                filled: true,
                border: InputBorder.none,
                hoverColor: Colors.grey[700],
                hintText: "Find your coffee..",
                prefixIconColor: Colors.orange,
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Expanded(child:
            Container(height: 50,
              child: ListView.builder(
                itemCount: Coffee.length,
                itemBuilder: (context, index){
                  return CoffeeType(Coffee[index][0],Coffee[index][1], (){
                    showLoadingSpinner();
                    setState(() {
                      for(int i=0; i<Coffee.length;i++){
                        Coffee[i][1] = false;
                      }
                      Coffee[index][1]=true;
                      coffeType = Coffee[index][0];

                      switch(coffeType){
                        case 'Latte':
                          {
                            temp = Latte;
                            break;
                          }
                        case 'Cuppaccino':
                          {
                            temp = cupp;
                            break;
                          }
                        case 'Coffee':
                          {
                            temp = cofe;
                            break;
                          }
                        case 'All':
                          {
                            temp = allTypes;
                            break;
                          }

                      }
                      print(coffeType);

                    });

                  } ,);
                },
                scrollDirection: Axis.horizontal,

              ),
            )),
          Container(

            height: 320,
              child: temp.length == 0? Padding(
                padding: const EdgeInsets.only(left: 130.0),
                child: Text('No Items Found', style: TextStyle(fontSize: 16, color: Color(
                    0xffec7f32)),),
              ): ListView.builder(

                itemCount: temp.length,
                itemBuilder: (context, index){

                  return CoffeeTile(title: temp[index][0],
                      imgPath: temp[index][1],
                      price: temp[index][2]);
                },
                scrollDirection: Axis.horizontal,



              )),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
