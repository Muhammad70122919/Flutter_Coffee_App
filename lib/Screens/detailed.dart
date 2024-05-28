import 'package:coffee/Screens/HomePage.dart';
import 'package:coffee/Screens/listview.dart';
import 'package:coffee/data/imagedata.dart';
import 'package:flutter/material.dart';


class detailedpage extends StatelessWidget {
  final int index;
  const detailedpage({Key? key, required this.index}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 15, 20, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children:[

              Container(
                height: MediaQuery.of(context).size.height * 100,
                width: MediaQuery.of(context).size.width * 100,
                child: Stack(
                  children: [

                    Container(
                      child: Image.asset(
                        portrait[index].ImagePath,
                        fit: BoxFit.cover,

                        height: 400,
                        width: MediaQuery.of(context).size.width * 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only
                        (left: 10),  //HomePage()
                      child: IconButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      }, icon: Icon(Icons.arrow_back),color: Colors.white,highlightColor: Colors.grey,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 400,
                          right: 10
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_rounded),color: const Color.fromARGB(255, 209, 13, 13),highlightColor: Colors.grey,),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 255),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:  const Color.fromRGBO(12, 15, 20, 1).withOpacity(0.6),
                          ),
                          height: 148.2,
                          width: MediaQuery.of(context).size.width * 100,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 10
                                      //Text('Robusta Beans',style: TextStyle(color: Colors.white,fontFamily: 'SemiBold',fontSize: 20),)
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: '${portrait[index].name}\n',
                                                style: TextStyle(color: Colors.white,fontFamily: 'SemiBold',fontSize: 20)
                                            ),
                                            TextSpan(
                                                text: 'From Africa',
                                                style: TextStyle(color: Colors.grey,fontFamily: 'Regular',fontSize: 12)
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15,
                                        left: 70),
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(12, 15, 20, 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        // Add your button click logic here
                                      },
                                      icon: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        //children: [Icon(Icons.hail)],

                                      ),
                                      label:  Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.access_alarm_outlined,color: Colors.red,), // Optional: Show the icon again if needed
                                          Text('hellll', style: TextStyle(fontSize: 10.0)),
                                        ],
                                      ),//Text('hellll'),
                                    ),
                                  )

                                  ,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,
                                        top: 15),
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(12, 15, 20, 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        // Add your button click logic here
                                      },
                                      icon: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        //children: [Icon(Icons.hail)],

                                      ),
                                      label:  Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Icon(Icons.access_alarm_outlined,color: Colors.red,), // Optional: Show the icon again if needed
                                          Text('hellll', style: TextStyle(fontSize: 10.0)),
                                        ],
                                      ),//Text('hellll'),
                                    ),
                                  ),

                                  //ElevatedButton(onPressed: (){}, child: Text('hello')),

                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 200.0

                                  //   ),
                                  //   child: ElevatedButton(onPressed: (){}, child: Text('hello')),
                                  // ),
                                  //    ElevatedButton(onPressed: (){}, child: Text('hello')),

                                ],

                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,
                                        top: 30),
                                    child: InkWell(
                                      onTap: (){
                                        // print('ikkii');
                                      },

                                      child: Icon(Icons.hail_outlined,color: Colors.red,),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: RichText(
                                        text:TextSpan(
                                            children: [

                                              TextSpan(
                                                  text: '4.5  ',
                                                  style: TextStyle(fontFamily: 'Poppins',fontSize: 16,color: Colors.white)  //(6,879)
                                              ),

                                              TextSpan(
                                                  text: '(6,879)',
                                                  style: TextStyle(fontFamily: 'Regular',fontSize: 10,color: Colors.grey)  //(6,879)
                                              )
                                            ]
                                        )),
                                  ),
                                  // ElevatedButton(onPressed: (){}, child: Text('hello')),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 150
                                    ),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                        ),
                                        onPressed: (){}, child: Text('Medium Roasted',style: TextStyle(fontFamily: 'Medium',fontSize: 10,color: Colors.grey),)),
                                  ),
                                ],)


                              , //ElevatedButton(onPressed: (){}, child: Text('hello')),ElevatedButton(onPressed: (){}, child: Text('hello')),
                            ],

                          )
                      ),
                    )

                    ,




                    Padding(
                      padding: const EdgeInsets.only(top: 400,
                          left: 10,
                          right: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 7,
                                  // left: 10,
                                ),
                                child: Text('Description',style: TextStyle(fontFamily: 'SemiBold',fontSize: 14,color: Colors.white),),
                              ),

                              Text('Arabica beans are by far the most popular type of coffee beans, making up about 60% of the world’s coffee. These tasty beans originated many centuries ago in the highlands of Ethiopia, and may even be the first coffee beans ever consumed! ',style: TextStyle(fontFamily: 'Regular',fontSize: 12,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text('Size',style: TextStyle(color: Colors.white,fontFamily: 'SemiBold',fontSize:14 ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:  Color.fromRGBO(235, 134, 72, 1),
                                        ),
                                        onPressed: (){}, child: Text('mediun',style: TextStyle(fontFamily: 'Regular',fontSize: 15,color: Colors.white),)),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:  Color.fromRGBO(235, 134, 72, 1),),
                                        onPressed: (){}, child: Text('mediun',style: TextStyle(fontFamily: 'Regular',fontSize: 15,color: Colors.white),)),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:  Color.fromRGBO(235, 134, 72, 1),),
                                        onPressed: (){}, child: Text('Medium',style: TextStyle(fontFamily: 'Regular',fontSize: 15,color: Colors.white),)),
                                  ],),
                              ),

                              Row(children: [
                                //Color.fromRGBO(235, 134, 72, 1),
                                Padding(
                                  padding: const EdgeInsets.only(top: 100,
                                      left: 6),
                                  child: Column(children: [  Text('Price',style: TextStyle(color: Colors.grey,fontFamily:'Regular',fontSize:20),),
                                    Text('${portrait[index].price}',style: TextStyle(fontFamily:'SemiBold',fontSize:20,color: Color.fromRGBO(235, 134, 72, 1)),),

                                  ],),
                                ),



                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 80,
                                      left: 80
                                  ),
                                  child: ElevatedButton(



                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:  Color.fromRGBO(235, 134, 72, 1),
                                        fixedSize: Size(240,60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),

                                      ),
                                      //  onPressed: (){}, child: Text('mediun')),

                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ListviewTest(item:items[index])));
                                      }, child: Text('Add To Cart',style: TextStyle(fontFamily: 'Regular',fontSize: 15,color: Colors.white),)),

                                )

                              ],)


                            ],
                          ),

                        ),
                      ),
                    )
                  ],



                ),


              ),

              // top

            ],
          ),
        ),
      ),
    );
  }
}
