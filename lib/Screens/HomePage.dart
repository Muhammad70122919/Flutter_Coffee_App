import 'package:coffee/Screens/detailed.dart';
import 'package:coffee/Screens/listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee/data/imagedata.dart';

//import 'package:flutter/widgets.dart';
//import 'package:flutter_svg/flutter_svg.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
 late TabController _tabcontroller;

 int indexpagechanged=0;
  @override
  void initState()
  {
    super.initState();
     _tabcontroller=TabController(length: 5, vsync: this);
  }
   @override
   void dispose()
   {
    _tabcontroller.dispose();
    super.dispose();
    
   }
   

@override
  Widget build(BuildContext context) {
  
    return Scaffold(
   backgroundColor:const Color.fromRGBO(12,15,20,1),
   appBar: PreferredSize(preferredSize: const Size.fromHeight(40),
   child: AppBar(
    title: const Text("Home",style: TextStyle(fontFamily: 'Poppins',color: Colors.white),),
    centerTitle: true,
    backgroundColor:const Color.fromRGBO(12,15,20,1),
    leading: IconButton(onPressed: (){}, icon: const Icon(Icons.window_rounded),color: Colors.white,),
    actions: [
      IconButton(onPressed: (){
     showPopupMenu(context);
      }, icon: const Icon(Icons.person_rounded),color: Colors.white,), 
    ],
    
   ),
   ),
   bottomNavigationBar: BottomNavigationBar(
    onTap: (index){
      setState(() {
        indexpagechanged=index;

        if(indexpagechanged==1)
        {
         // print(indexpagechanged);
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Testpageee()));
        }
      });
    },
    currentIndex: indexpagechanged,
    
    items:const [

    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Screen'),
     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home')],
    ),


   body:  SingleChildScrollView(
    //scrollDirection: Axis.horizontal,

    child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 17,
          
        ),
        Container
        (
          padding: const EdgeInsets.only(left: 17),
          child: const Text('Find The Best\nCoffee for You',style: TextStyle(fontSize: 28,fontFamily: 'Poppins',color: Colors.white),)
          ),
         const SizedBox(
            height: 17,
            
          ),
           Padding(
             padding: const EdgeInsets.only(
              left: 17,
              right: 100
             ),
             child: TextFormField(
                style:const TextStyle(color: Colors.white),
             
                decoration: InputDecoration(
             
                  hintText: 'Find your coffee',
                  fillColor:const Color.fromRGBO(82,85,90,0.5),
                  filled: true,
                  
                  
                  hintStyle:const TextStyle(color: Colors.white,fontSize: 15),
               
                  suffixIcon:const Icon(Icons.search_off_outlined),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      width: 1.0
                    ),
             
                    
                  )
                ),
              ),
           ),

          Container(
          
            child: TabBar(
               padding: const EdgeInsets.only(
                top: 10,
                left: 0,
               ),
              indicatorColor: const Color.fromRGBO(209,120,66, 1),
            
               isScrollable: true,
              controller: _tabcontroller,
              labelColor:const Color.fromRGBO(209,120,66, 1),
              unselectedLabelColor: Colors.grey,
              
              
              tabs:const [
              Tab(text:'All'),
              Tab(text:'cappuccino'),
              Tab(text:'expresso'),
              Tab(text:'americano '),
              Tab(text:'macchiato '),
              ],
              
              ),
              
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: double.maxFinite,
              height: 550,
              child: TabBarView(
                
                 controller: _tabcontroller,
                children: [


                  //here to past the code of testpage
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [


      Row(
        mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for(int i=0;i<3;i++)
          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>detailedpage(index:i)));
            },
            child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 17,
                                          left: 17
                                        ),
                                        height: 200.68,
                                        width: 149,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: const Color.fromRGBO(82,85,90,0.5),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                           Padding(
                            padding: const EdgeInsets.only(top: 7,
                            left: 11
                            ),
                            child: ClipRRect(
                           borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(items[i].ImagePath,height: 126,width: 126,)
                            ),
                           ),
                           Padding(
                            padding: EdgeInsets.only(left: 11),
                            child: Text('${items[i].name}',style: TextStyle(fontFamily: 'Poppins-Regular',fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),),
                            ),
                         const  Padding(
                            padding:  EdgeInsets.only(left: 11),
                            child: Text('With Steamed Milk',style: TextStyle(fontFamily: 'Poppins',fontSize: 9,fontWeight: FontWeight.normal,color: Colors.white),),
                            ),
                           Padding(
                            padding: const EdgeInsets.only(left: 11),
                            child: RichText(
                                      text:const TextSpan(
                                        children: [
                                          TextSpan(
                            text: 'Rs : ',
                            style: TextStyle(color:Color.fromRGBO(209,120,66, 1),fontFamily: 'SemiBold',fontSize: 15),
                                          ),
                                          TextSpan(
                            text: ' 400',
                            style: TextStyle(color: Colors.white)
                                          ),

                                        ]
                                      ),
                            )


                         ),
                                            // Padding(
                                            //   padding: const EdgeInsets.only(
                                            //     left: 10
                                            //   ),
                                            //   child: Container(
                                            //     height: 30,
                                            //     width: 130,
                                            //     color: Colors.green,
                                            //     child: ElevatedButton(
                                            //       onPressed: (){
                                            //         Navigator.push(context, MaterialPageRoute(builder: (context)=>detailedpage()));
                                            //       },
                                            //       child: Text('+'),
                                            //     ),
                                            //   ),
                                            // )


                                          ],

                                          ),

                                      ),
          ),
        ],
      ),

                const   Padding(
                     padding:  EdgeInsets.only(
                      top: 15,
                      left: 18
                     ),
                     child: Text("Coffee beans",style: TextStyle(fontFamily: 'Medium',color: Colors.white,fontSize: 16),),
                   ),
Column(
  children: [
    Row(
            mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               for(int i=0;i<3;i++)
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>detailedpage(index:i)));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                                                top: 17,
                                                left: 17
                                              ),
                      height: 200.68,
                      width: 149,
                      decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: const Color.fromRGBO(82,85,90,0.5),
                                              ),
                      child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,

                                                children: [
                                 Padding(
                                  padding: const EdgeInsets.only(top: 7,
                                  left: 11
                                  ),
                                  child: ClipRRect(
                                 borderRadius: BorderRadius.circular(12),
                                            child: Image.asset(itemsBeans[i].ImagePath,height: 126,width: 126,)
                                  ),
                                 ),
                                  Padding(
                                  padding:  EdgeInsets.only(left: 11),
                                  child: Text('${itemsBeans[i].name}',style: TextStyle(fontFamily: 'Poppins-Regular',fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),),
                                  ),
                                const Padding(
                                  padding:  EdgeInsets.only(left: 11),
                                  child: Text('With Steamed Milk',style: TextStyle(fontFamily: 'Poppins',fontSize: 9,fontWeight: FontWeight.normal,color: Colors.white),),
                                  ),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: RichText(
                                            text:const TextSpan(
                                              children: [
                                                TextSpan(
                                  text: 'Rs : ',
                                  style: TextStyle(color:Color.fromRGBO(209,120,66, 1),fontFamily: 'SemiBold',fontSize: 15),
                                                ),
                                                TextSpan(
                                  text: ' 400',
                                  style: TextStyle(color: Colors.white)
                                                ),

                                              ]
                                            ),
                                  )


                               ),
                                                  // Padding(
                                                  //   padding: const EdgeInsets.only(
                                                  //       left: 10
                                                  //   ),
                                                  //   child: Container(
                                                  //     height: 30,
                                                  //     width: 130,
                                                  //     color: Colors.green,
                                                  //     child: ElevatedButton(
                                                  //       onPressed: (){},
                                                  //       child: Text('+'),
                                                  //     ),
                                                  //   ),
                                                  // )


                                                ],

                                                ),
                    ),
                  ),
                ),

            ],
          ),
  ],
),


                                  
    ],
  ),
),



 //Text("Coffee Beans",style: TextStyle(color: Colors.white),),
  SingleChildScrollView(
            scrollDirection: Axis.horizontal,

  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
          
      
      Column(
         mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [    // second tab
             for(int i=0;i<4;i++)
              Container(
                                          margin: const EdgeInsets.only(
                                            top: 17,
                                            left: 17
                                          ),
                                          height: 200.68,
                                          width: 149,

                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: const Color.fromRGBO(82,85,90,0.5),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children: [
                             Padding(
                              padding: const EdgeInsets.only(top: 7,
                              left: 11
                              ),
                              child: ClipRRect(
                             borderRadius: BorderRadius.circular(12),
                                        child: Image.asset('assets/Images/cappuccino/square/cappuccino_pic_2_square.png',height: 126,width: 126,)
                              ),
                             ),
                            const  Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text('Cappuccino',style: TextStyle(fontFamily: 'Poppins-Regular',fontSize: 13,fontWeight: FontWeight.normal,color: Colors.white),),
                              ),
                            const Padding(
                              padding:  EdgeInsets.only(left: 11),
                              child: Text('With Steamed Milk',style: TextStyle(fontFamily: 'Poppins',fontSize: 9,fontWeight: FontWeight.normal,color: Colors.white),),
                              ),
                             Padding(
                              padding: const EdgeInsets.only(left: 11),
                              child: RichText(
                                        text:const TextSpan(
                                          children: [
                                            TextSpan(
                              text: 'Rs : ',
                              style: TextStyle(color:Color.fromRGBO(209,120,66, 1),fontFamily: 'SemiBold',fontSize: 15),
                                            ),
                                            TextSpan(
                              text: ' 400',
                              style: TextStyle(color: Colors.white)
                                            ),

                                          ]
                                        ),
                              )


                           ),


                                            ],

                                            ),



                                        ),
                                        
            ],
          ),
        ],
      ),


//   second tab design

  const Padding(
                     padding: EdgeInsets.only(
                      top: 15,
                      left: 18
                     ),
                     child: Text("Coffee beans",style: TextStyle(fontFamily: 'Medium',color: Colors.white,fontSize: 16),),
                   ),
      //for(int i=0;i<3;i++)
Padding(
  padding: const EdgeInsets.only(
                      top: 10,
                      left: 18
  ),
  child: Container(
    height: 140,

    width: 350,
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           color: const Color.fromRGBO(82,85,90,0.5),
                                      ),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                                                   Padding(
                                                                    padding: const EdgeInsets.only(top: 7,
                                                                    left: 11
                                                                    ),
                                                                    child: ClipRRect(
                                                                   borderRadius: BorderRadius.circular(12),
                                                      child: Image.asset('assets/Images/cappuccino/square/cappuccino_pic_2_square.png',height: 126,width: 126,)
                                                                    ),
                                                                   ),
                                                           Padding(
                                                             padding: const EdgeInsets.only(
                                                              top: 10,
                                                              left: 10
                                                             ),
                                                             child: Text('5 Coffee Beans You\nMust Try !',style: TextStyle(fontFamily: 'Medium',color: Colors.white,fontSize: 16),),
                                                           )


                                          ]

                                            ),
                                      ),
  )
    )
    ],

  ),
  
),






        SingleChildScrollView(
            scrollDirection: Axis.vertical,

  child: Column(
    children: [
      Container(
        height: 150,
        width: 150,
        color: Colors.green,
      ),
         Container(
        height: 150,
        width: 150,
        color: Colors.pink,
      ),
      Container(
        height: 150,
        width: 150,
        color: Colors.green,
      ),
  
    ],
  ),
),



        SingleChildScrollView(
            scrollDirection: Axis.vertical,

  child: Column(
    children: [
      Container(
        height: 150,
        width: 150,
        color: Colors.green,
      ),
         Container(
        height: 150,
        width: 150,
        color: Colors.pink,
      ),
      Container(
        height: 150,
        width: 150,
        color: Colors.green,
      ),
  
    ],
  ),
),




        SingleChildScrollView(
            scrollDirection: Axis.vertical,

  child: Column(
    children: [
      Container(
        height: 150,
        width: 150,
        color: Colors.green,
      ),
         Container(
        height: 150,
        width: 150,
        color: Colors.pink,
      ),
      Container(
        height: 150,
        width: 150,
        color: Colors.green,
      ),
  
    ],
  ),
),

                   // Text('1',style: TextStyle(color: Colors.white),),
                    // Text('1',style: TextStyle(color: Colors.white),),
                    // Text('1',style: TextStyle(color: Colors.white),),
                    // Text('1',style: TextStyle(color: Colors.white),),
                    // Text('1',style: TextStyle(color: Colors.white),),
            
                       ],
                ),
            ),
          )
      ],
    ),

   ),

 
    );
  }

  void showPopupMenu(BuildContext context) {
   
  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RelativeRect position = RelativeRect.fromLTRB(
    overlay.size.width - 50, // Adjust the X-coordinate as needed
    kToolbarHeight, // Y-coordinate (below the app bar)
    overlay.size.width, // Right edge of the screen
    overlay.size.height, // Bottom edge of the screen
  );
    showMenu(
      context: context,
      position: position,
      color:const Color.fromARGB(111, 7, 7, 7),
      items: [
       const PopupMenuItem<int>(
          value: 0,
        
          child: Text("My Account",style: TextStyle(color: Colors.grey),),
        ),
       const PopupMenuItem<int>(
          value: 1,
          child:  Text("Logout",style: TextStyle(color: Colors.grey),),
        ),
      
      ],
      elevation: 6,
    ).then((value) {
      
      if (value == 0) {
        print("My account menu is selected.");
      
      } else if (value == 1) {
       
      } 
    });
  }
}




