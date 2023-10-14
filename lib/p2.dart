import 'package:flutter/material.dart';
import 'package:quiz_route/utl/app_assets.dart';

class P2 extends StatefulWidget {
  static const String routeName = "p2" ; 
  const P2({Key? key}) : super(key: key);

  @override
  State<P2> createState() => _P2State();
}

class _P2State extends State<P2> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                   
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, jade",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Ready to work out?",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Badge(child: Icon(Icons.notifications_none, size: 35)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color.fromRGBO(240, 240, 240, 1),
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      const  CustomColumn(
                          icon1: (Icons.favorite_border),
                          text1: "heart rate",
                          text2: "81BPM",),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        color: Colors.black,
                        width: 1,
                        height: double.infinity,
                      ),
                     const CustomColumn(
                          icon1: Icons.menu, text1: "To-Do", text2: "32.5 %"),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        color: Colors.black,
                        width: 1,
                        height: double.infinity,
                      ),
                      const CustomColumn(
                          icon1: Icons.local_fire_department,
                          text1: "calo",
                          text2: "1000Cal")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Workout Programs ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 20,
              ),

              TabBar(
                indicatorColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 18,

                ),
                isScrollable: true,
                labelColor: Colors.black,
                controller: TabController(length: 4, vsync: this),
                  tabs:[
                  Tab(text: "All Type",),
                  Tab(text: "Full body",),
                  Tab(text: "upper",),
                  Tab(text:"Lower"),
                  ]
              ),
              Container(
                padding: EdgeInsets.only(top:20),
                width: double.maxFinite,
                height: 430,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    
                    Column(
                      children: [
                        
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(234, 236, 245,1),
                            ),
                                            
                            width: double.infinity,
                                               
                            child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                   
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(50.0), 
                                            child: Container(
                                              width: 60,
                                              height: 30,
                                             color: Colors.grey.withOpacity(0.2),
                                              child: Center(child: Text("7 dyas")),
                                            ),
                                          ),
                                        ),
                                   
                                                             
                                    
                                        Expanded(
                                          child: Text(
                                            "Morning yoga",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                                            
                                      
                                      Expanded(
                                        child: Text(
                                          " Improve mental focus" , 
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                               
                                
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Image.asset(AppAssets.clock),
                                            SizedBox(
                                              width :10
                                            ),
                                            Text(
                                              "30 mins" ,
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            )
                                          ],
                                                              
                                                                      
                                        ),
                                      ),
                                
                                
                                    ],
                                    
                                  ),
                        
                                  
                                ),
                                Image.asset(AppAssets.ex1),
                              ],
                              
                              
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                         Expanded(
                           child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(234, 236, 245,1),
                            ),
                                             
                            width: double.infinity,
                                                 
                            child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                   
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                                             ClipRRect(
                                          borderRadius: BorderRadius.circular(50.0), 
                                          child: Container(
                                            width: 60,
                                            height: 30,
                                           color: Colors.grey.withOpacity(0.2),
                                            child: Center(child: Text("7 dyas")),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                                             
                                    
                                        Text(
                                          "Plank exercise",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                                            
                                      
                                      Text(
                                        " Improve posture and stability" , 
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                
                                      Row(
                                        children: [
                                          Image.asset(AppAssets.clock),
                                          SizedBox(
                                            width :10
                                          ),
                                          Text(
                                            "30 mins" ,
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                         
                                
                                      ),
                                
                                
                                    ],
                                    
                                  ),
                         
                                  
                                ),
                                Image.asset(AppAssets.Plank),
                              ],
                              
                              
                            ),
                                                 ),
                         ),
                      ],

                    ),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.red,
                    ),
                  ],
                 
              
              
              
              
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn(
      {Key? key, required this.icon1, required this.text1, required this.text2})
      : super(key: key);
  final IconData icon1;

  final String text1;

  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon1
            ,color : Color.fromRGBO(113, 123, 188, 1),
            ),
            Text(text1),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text2,
          style : TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 18
          ),
        )
      ],
    );
  }
}
