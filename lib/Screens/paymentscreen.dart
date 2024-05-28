import 'package:coffee/Screens/addtocart.dart';
import 'package:coffee/Screens/paymentscreen.dart';

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';



  
class PaymentToPay extends StatelessWidget {
  const PaymentToPay({super.key});




  @override
  Widget build(BuildContext context) {
     final double Height= MediaQuery.of(context).size.height;
       final double Width= MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor:const Color.fromRGBO(12,15,20,1),
   appBar: PreferredSize(preferredSize: const Size.fromHeight(40),
   child: AppBar(
    title: const Text("Payment",style: TextStyle(fontFamily: 'SemiBold',color: Colors.white),),
    centerTitle: true,
    backgroundColor:const Color.fromRGBO(12,15,20,1),
    leading: IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToCart()));
    }, icon: const Icon(Icons.arrow_back),color: Colors.white,),


   ),
   ),

   body: SingleChildScrollView(
     child: Container(

      height: Height,
      width: Width,
       color: const Color.fromRGBO(12,15,20,1),

       child: Column(

        children: [

          Container(
            height: 241,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(235, 134, 72, 1),
                width: 1
              ),
              borderRadius: BorderRadius.circular(23)


            ),
          // color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

               const  Padding(
                   padding:  EdgeInsets.only(
                    top: 7,
                    left: 4
                   ),
                   child: Text('credit card',style: TextStyle(fontFamily: 'SemiBold',color: Colors.white,fontSize: 14),),
                 ),



                   Padding(
                     padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 11,
                     ),
                     child: Container(
                      height: 186,
                      width: 350,

                      decoration: BoxDecoration(
                        color:const Color.fromARGB(255, 36, 29, 29),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Stack(
                        children: [
                         // Icon(Icons.sim_card_outlined),
                       Padding(
                         padding: const EdgeInsets.only(
                          top: 7,
                          left: 10
                         ),
                         child: Container(
                          color: const Color.fromARGB(	65, 65, 65, 61),

                           child:Image.asset('assets/Icons/Vsim.png')),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(
                          left:290
                         ),
                         child: Brand(Brands.visa),
                       ),

                       Padding(
                         padding: const EdgeInsets.only(
                          top: 80,
                          left: 10
                         ),
                         child: Container(
                          height: 20,
                          width: 275,
                          child:  Text('3897    8923    6745    4638',style: TextStyle(fontFamily: 'SemiBold',fontSize: 15,color: Colors.white),),
                         ),
                       ),
                     const  Padding(
                         padding: EdgeInsets.only(
                          top: 140,
                          left: 7
                         ),
                         //wrap with container
                          child: Text('Card Holder Name',style: TextStyle(color: Colors.grey,fontFamily: 'Regular',fontSize: 10)),

                       ),
                     const  Padding(
                         padding:  EdgeInsets.only(
                          top: 159,
                          left: 7),
                         child: Text('Robert Evans',style: TextStyle(color: Colors.white,fontFamily: 'Regular',fontSize: 10)),
                       ),
                     const   Padding(
                         padding:  EdgeInsets.only(
                          top: 140,
                          left: 280),
                         child: Text('Expiry Date',style: TextStyle(color: Colors.grey,fontFamily: 'Regular',fontSize: 10),),
                       ),
                 const  Padding(
                         padding:   EdgeInsets.only(
                          top: 159,
                          left: 280),
                         child: Text('02/30',style: TextStyle(color: Colors.white,fontFamily: 'Medium',fontSize: 14)),
                       ),
                        ],
                      ),
                     ),
                   ),






              ],
            ),
          ),
     const SizedBox(height: 30,),
          Container(
            height: 50,
            width: 350,
            child: ElevatedButton.icon(onPressed: (){}, icon:Icon(FontAwesome.folder_open), label: Text('Wallet'))
          ),
          const SizedBox(height: 30,),

          Container(
             height: 50,
            width: 350,
            child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.apple), label:const Text('Apple Pay'))
          ),
          const SizedBox(height: 30,),
          Container(
             height: 50,
            width: 350,
            child: ElevatedButton.icon(onPressed: (){}, icon: Brand(Brands.amazon), label: const Text('Amazone pay'))
          ),
          const SizedBox(height: 30,),
          SizedBox(
             height: 50,
            width: 350,
            child: ElevatedButton.icon(onPressed: (){}, icon: Brand(Brands.google_wallet), label:const Text('google pay'))
          ),



             const SizedBox(
                height: 20,
              ),

                Stack(
                 children: [

                Align(
                 alignment: Alignment.bottomCenter,


                 child: Container(
                             height: 190,
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
                                          top: 138),
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
                                    left: 30,
                                    top: 130

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
                                       //Navigator.push(context, MaterialPageRoute(builder: (context) => Paymentseccessfull()));

                                      }, child: const Text("Pay From Credit Card",style: TextStyle(color: Colors.white,fontFamily: 'SemiBold' ,fontSize: 16),))),
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

     ),
   ),
    );
  }
}