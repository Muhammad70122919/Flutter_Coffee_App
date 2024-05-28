import 'dart:async';

import 'package:coffee/Screens/HomePage.dart';
import 'package:coffee/Screens/Paymentscreen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {

  
 late Timer timer;
  var value = 0;
  var value1=0;
  var value2=0;
  bool changed=true;

 @override
  void dispose() {
    timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }
List listname = [
  'Beaches'
  'Museums',
  'Parks',
  'Restaurants'
];
 
  @override
  Widget build(BuildContext context) {

  
    final double Height = MediaQuery.of(context).size.height;
    final double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 15, 20, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title:const Text(
            "Cart",
            style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(12, 15, 20, 1),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
            },
            icon: const Icon(Icons.window_rounded),
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_rounded),
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        backgroundColor:const Color.fromRGBO(12, 15, 20, 1),
        selectedItemColor: const Color.fromRGBO(235, 134, 72, 1),
        unselectedItemColor: Colors.grey,
        items:const  [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Screen'),
     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home')
     ],
        
        
        ),
      body: ListView.builder(
        
         itemCount: listname.length,
         
        itemBuilder: (BuildContext context, index)
       
       {   
      

        
     return ListTile(
      title: 
       Column(
       
         children: [

           Container(
                    height: Height,
                    width: Width,
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(12, 15, 20, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column
                      (
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    
                Padding(
                            padding: const EdgeInsets.only(left: 15,
                            top: 15),
                            
                            child: Container(
                             
                              height:255 ,
                               width: Width-80,
                                decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 70, 61, 61),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [  // 
                                 
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,
                                    top: 10),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.asset('assets/Images/cappuccino/square/cappuccino_pic_2_square.png',height: 100,width: 100,),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      
                                     const Padding(
                                        padding:   EdgeInsets.only(left: 20,top: 10),
                                        child: Text("Cappuccino",style: TextStyle(fontFamily: 'Regular',fontSize: 10,color: Colors.white)),
                                      ),
                            
                                    const  Padding(
                                        padding:  EdgeInsets.only(left: 20,top: 4),
                                        child: Text("With Steamed Milk",style: TextStyle(fontFamily: 'Regular',fontSize: 10,color: Colors.grey),)
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 10),
                                        child: Container(
                                          height: 40,
                                          width:118,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(12, 15, 20, 1).withOpacity(0.8),
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: const Center(child: Text('Medium Roasted',style: TextStyle(fontFamily: 'Medium',fontSize: 10,color: Colors.grey),)),
                                        ),
                                      ),
                                    ],
                                  ),
                                        
                                ],
                              ) ,
                                     Padding(
                                       padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 15),
                                       child: Row(
                                         children: [
                                           Container(
                                            height: 35,
                                            width: 72,
                                           
                                            decoration: BoxDecoration(
                                               color: const Color.fromRGBO(12, 15, 20, 1).withOpacity(0.8),
                                              borderRadius: BorderRadius.circular(8)
                                            ),
                                            child: const Center(child: Text('S',style: TextStyle(fontFamily: 'Medium',fontSize: 16,color: Colors.white),)),
                                           ),
                                           const Padding(
                                              padding:EdgeInsets.only(left: 13),
                                              child: Text("RS",style: TextStyle(color: Color.fromRGBO(235, 134, 72, 1)),),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text("300",style: TextStyle(color: Colors.white),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color.fromRGBO(235, 134, 72, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(7)
                                                  )
                            
                                                  
                                                ),
                                                onPressed: (){
                                                  setState(() {
                                                    if(value>0)
                                                    {
                                                      value--;
           
                                                    }
                                                    
                                                  });
           
           
                                                }, child: const Text('-',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: Container(
                                                height: 35,
                                                width: 50,
                                                    decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(235, 134, 72, 1),
                                                borderRadius: BorderRadius.circular(25),
                                                             ),
                                                              child: TextField(
                                                                controller: TextEditingController(text: value.toString()),
                                                                
                                                             keyboardType: TextInputType.number,
                                                              decoration: const InputDecoration(
                                                            border: InputBorder.none,
                                                                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                                              ),
                                                            ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color.fromRGBO(235, 134, 72, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(7)
                                                  )
                            
                                                  
                                                ),
                                                onPressed: (){
                                                  setState(() {
                                                  
                                                    value++;
                                                  });
           
           
           
           
           
           
                                                }, child:const  Text('+',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                            ),
                                           
                                         ],
                                       ),
                                     ),
                                      Padding(
                                       padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 15),
                                       child: Row(
                                         children: [
                                           Container(
                                            height: 35,
                                            width: 72,
                                           
                                            decoration: BoxDecoration(
                                               color: const Color.fromRGBO(12, 15, 20, 1).withOpacity(0.8),
                                              borderRadius: BorderRadius.circular(8)
                                            ),
                                            child: const Center(child: Text('M',style: TextStyle(fontFamily: 'Medium',fontSize: 16,color: Colors.white),)),
                                           ),
                                           const Padding(
                                              padding:EdgeInsets.only(left: 13),
                                              child: Text("RS",style: TextStyle(color: Color.fromRGBO(235, 134, 72, 1)),),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text("300",style: TextStyle(color: Colors.white),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color.fromRGBO(235, 134, 72, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(7)
                                                  )
                            
                                                  
                                                ),
                                                onPressed: (){
                                             setState(() {
                                               if(value1>0)
                                               {
                                                value1--;
                                               }
                                             });
           
           
           
                                                }, child: const Text('-',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: Container(
                                                height: 35,
                                                width: 50,
                                                    decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(235, 134, 72, 1),
                                                borderRadius: BorderRadius.circular(25),
                                                             ),
                                                                     child: TextField(
                                                                      readOnly: true,
                                                                      controller: TextEditingController(text: value1.toString()),
                                                                      
                                                             keyboardType: TextInputType.number,
                                                              decoration: const InputDecoration(
                                                            border: InputBorder.none,
                                                                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                                              ),
                                                            ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color.fromRGBO(235, 134, 72, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(7)
                                                  )
                            
                                                  
                                                ),
                                                onPressed: (){
                                                  setState(() {
                                                    value1++;
                                                  });
           
           
           
                                                }, child:const  Text('+',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                            ),
                                           
                                         ],
                                       ),
                                     ),
                                      Padding(
                                       padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 15),
                                       child: Row(
                                         children: [
                                           Container(
                                            height: 35,
                                            width: 72,
                                           
                                            decoration: BoxDecoration(
                                               color: const Color.fromRGBO(12, 15, 20, 1).withOpacity(0.8),
                                              borderRadius: BorderRadius.circular(8)
                                            ),
                                            child: const Center(child: Text('L',style: TextStyle(fontFamily: 'Medium',fontSize: 16,color: Colors.white),)),
                                           ),
                                           const Padding(
                                              padding:EdgeInsets.only(left: 13),
                                              child: Text("RS",style: TextStyle(color: Color.fromRGBO(235, 134, 72, 1)),),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text("300",style: TextStyle(color: Colors.white),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color.fromRGBO(235, 134, 72, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(7)
                                                  )
                            
                                                  
                                                ),
                                                onPressed: (){
                                                  setState(() {
                                                    if(value2>0)
                                                    {
                                                      value2--;
                                                    }
                                                  });
           
           
           
                                                }, child: const Text('-',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: Container(
                                                height: 35,
                                                width: 50,
                                                    decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(235, 134, 72, 1),
                                                borderRadius: BorderRadius.circular(25),
                                                             ),
                                                                     child: TextField(
                                                                     controller: TextEditingController(text: value2.toString()),
                                                             keyboardType: TextInputType.number,
                                                              decoration: const InputDecoration(
                                                            border: InputBorder.none,
                                                                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                                              ),
                                                            ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color.fromRGBO(235, 134, 72, 1),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(7)
                                                  )
                            
                                                  
                                                ),
                                                onPressed: (){
                                                  setState(() {
                                                    value2++;
                                                  });
           
                                               
           
                                                }, child:const  Text('+',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                            ),
                                           
                                         ],
                                       ),
                                     ),
                                        
                                ],
                              )
                            ),
                          ),
                       
                     
                
                   const SizedBox(
                      height: 20,
                    ),
                  
                      Stack(
                       children: [
                     
                      Align(
                       alignment: Alignment.bottomCenter,
                     
                     
                       child: Container(
                                   height: 60,
                                   width: Width,
                                   
                                   decoration: BoxDecoration(
                                    color: const Color.fromRGBO(12, 15, 20, 1),
                                    borderRadius: BorderRadius.circular(12)
                                   ),
                                   child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     
              
                                      Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                       const   Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:  EdgeInsets.only(left: 8,
                                                top: 6),
                                                child:  Text("Total Price",style: TextStyle(color: Colors.grey,fontSize: 12,fontFamily: 'Medium'),),
                                              ),
                                              Padding(
                                                padding:  EdgeInsets.only(left: 9),
                                                child: Text("Rs 200",style: TextStyle(color: Colors.grey,fontSize: 21,fontFamily: 'SemiBold'),),
                                              ),
              
                                            ],
                                    
                                          ),
                                          
                                         
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 30
                                        ),
                                        child: SizedBox(
                                          height: 60,
                                          width: 240,
                                         // color: Color.fromRGBO(235, 134, 72, 1),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:const Color.fromRGBO(235, 134, 72, 1),
                                            ),
                                            onPressed: (){
           
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentToPay()));
                                            }, child: const Text("Pay",style: TextStyle(color: Colors.white,fontFamily: 'SemiBold' ,fontSize: 16),))),
                                      ),
                                        ],
                                      )
                                    ],
                                   ),
                                  
                                 ),
                     ),
                      
                    ],
                  )
                  
                         
                        ],
                  ),
               )
               ),
         ],
       ),
     );
            
          

        },
        
        
        ),
      
    );
  }
}
