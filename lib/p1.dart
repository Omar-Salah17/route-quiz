import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:quiz_route/utl/app_assets.dart';

class P1 extends StatefulWidget {
   static const String routeName = "P1" ; 
   P1({super.key});

  @override
  State<P1> createState() => _P1State();
}

class _P1State extends State<P1> {
   int activeIndex = 0 ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.logo) , 
                const Badge(child: Icon(Icons.notifications_none_outlined)),
            
            
              ],
            ),
      
            const Padding(
              padding: EdgeInsets.only(top :8.0 , bottom: 8.0),
              child: Row(
                children: [
                  Text("Hello,",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal
                    ),
                     
                  
                  ) , 
              
                  Text(
                    " Sara Rose",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold , 
              
                    ),
                    )
                ],
              
              ),
            ),
         const Text(
                "how are you feeling today ?",
                style: TextStyle(
                  fontSize: 15,
                ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Row(

                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(AppAssets.love),
                             const SizedBox(
                              height: 3.0,
                            ),
                            const Text(
                              "Love",
                            ),
                          ],
                        ),
                      ),
                
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(AppAssets.cool),
                             const SizedBox(
                              height: 3.0,
                            ),
                            const Text(
                              "cool",
                            ),
                          ],
                                      
                        ),
                      ),
                
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(AppAssets.happy),
                            const SizedBox(
                              height: 3.0,
                            ),
                            const Text(
                              "happy",
                            ),
                          ],
                        ),
                      ),
                
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(AppAssets.sad),
                             const SizedBox(
                              height: 3.0,
                            ),
                            const Text(
                              "Sad",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Feature" , 
                        style: TextStyle(
                          fontSize: 20 , 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See more >",
                        style: TextStyle(
                          color: Colors.green.shade700 , 
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 3,
                     itemBuilder: (context , index ,realindex)
                     {
                      return buildSlider();
                     },
                     options: CarouselOptions(
                      viewportFraction: 1,
                      height: 190,
                      autoPlay: true , 
                      autoPlayInterval: const Duration(seconds: 2),
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index ;
                        });
                        
                      },
                     ),
                     ),
                     SizedBox(
                      height: 10,
                     ),
                     buildIndicator(),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercise",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "See more >",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(2, 122, 72, 1),
                          ),
                        )
                      ],
                     ),
                     SizedBox(
                      height: 15,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          color: Color.fromRGBO(175, 154, 206, 0.5),




                          height: 60,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              
                              children: [
                                Image.asset(AppAssets.relax),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Relaxation" , 
                                  style: TextStyle(
                                    color : Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                          
                            ),
                          ),
                        ),
                         Container(
                             margin: EdgeInsets.only(left: 30),
                          color: Color.fromRGBO(233, 176, 217, 0.5),



                          height: 60,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              
                              children: [
                                Image.asset(AppAssets.mid),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Meditation" , 
                                  style: TextStyle(
                                    color : Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                          
                            ),

                            

                            

                            
                          ),
                        ),
                      ],
                     ),

                     SizedBox(
                      height: 15,
                     ),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          color: Color.fromRGBO(241, 214, 187, 0.5),





                          height: 60,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              
                              children: [
                                Image.asset(AppAssets.beathing),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Beathing" , 
                                  style: TextStyle(
                                    color : Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                          
                            ),
                          ),
                        ),
                         Container(
                             margin: EdgeInsets.only(left: 30),
                          color: Color.fromRGBO(166, 204, 229, 0.5),




                          height: 60,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              
                              children: [
                                Image.asset(AppAssets.yoga),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Yoga" , 
                                  style: TextStyle(
                                    color : Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                          
                            ),

                            

                            

                            
                          ),
                        ),
                      ],
                     ),

                  ],
                )

               
              

           
          ],
        ),
      ),
    );
  }
  Widget buildIndicator(){
  return AnimatedSmoothIndicator(
    activeIndex: activeIndex,
     count: 3,
     effect: JumpingDotEffect(
      dotHeight: 10,
      dotWidth: 10,
      dotColor: Colors.grey,

     ),

   
    );
}
}


Widget buildSlider( ){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
       color: const Color.fromRGBO(153, 227, 225, 1),
    ),
    width :double.infinity ,
   
    margin: const EdgeInsets.symmetric(horizontal: 20),
 
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
             
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Positive Vibes",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(52, 64, 84, 1),
                      fontWeight: FontWeight.bold
                    
                    
                    ),
                    
                  ),
                ),
               
                Expanded(
                  
                  child: SizedBox(
                    width: 220,
                    child: Text(
                      
                      "boost your mood with positive vibes" , 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold ,
                        color: Color.fromRGBO(0, 0, 0, 1), 
                        
                      ),
                      ),
                  ),
                ),
              
                  
                  Expanded(
                    child: Row(
                      children: [
                         Image.asset(AppAssets.start),
                          
                          SizedBox(
                            width: 10,
                          ),
                      
                          Text(
                            "10 mins" ,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16,
                            ),
                          )
                      ],
                    ),
                  ),
                
              ],
            ),
          ),
          Image.asset(AppAssets.slider),
        ],
      ),
    ),

  );

}