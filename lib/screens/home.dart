import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List optionsIcons = ["images/9913468.png","images/download.png","images/images (4) 1.png"];
  List optionsTitle = ["Exam", "Practices","Materials"];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 209,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.36, -0.93),
                        end: Alignment(-1.46, 1.47),
                        colors: [
                          Color(0xFF512E7E),
                          Color(0xFFA073DA),
                        ],
                        stops: [
                          0.0852,
                          1.0,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                ),
                const Positioned(
                    top: 35,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi Good Morning !',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),
                        Text('John',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      ],
                    )),
                const Positioned(
                    top: 35,
                    right: 20,
                    child: CircleAvatar()),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Text("Selected Course",style: TextStyle(color: Color(0XFF707070),fontWeight: FontWeight.w300,fontSize: 12),),
                              Text("Montessori",style: TextStyle(color: Color(0XFF000000),fontWeight: FontWeight.w600,fontSize: 16),)
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0XFF512E7E),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Change",style: TextStyle(color: Color(0XFFFFFFFF),fontWeight: FontWeight.w500,fontSize: 14),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.compare_arrows,color: Colors.white,)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
        
            const SizedBox(height: 20,),
            
            // options List
            Container(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: optionsIcons.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 86,
                      width: 91,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      
                      child: Column(
                        children: [
                          Expanded(
                            child: Image(image: AssetImage(optionsIcons[index]))
                            // SvgPicture.asset(
                            //   'svg/images (4) 1.svg',
                            //   // width: 200,
                            //   // height: 200,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Courses",style: TextStyle(fontWeight:FontWeight.w700,fontSize: 16),),
                  Text("See All",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 16),),
                ],
              ),
            ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 6, // Number of items in the grid
            itemBuilder: (BuildContext context, int index) {
              return const CircleAvatar(
                radius: 48,
              );
            },
          ),
        ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Container(
                height: 132,
                width: width,
                decoration: BoxDecoration(
                  color: const Color(0XFFF6EAB680).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(14)
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text("Latest Test Series",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: optionsIcons.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 86,
                      width: 91,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)
                      ),

                      child: Column(
                        children: [
                          Expanded(
                              child: Image(image: AssetImage(optionsIcons[index]))
                            // SvgPicture.asset(
                            //   'svg/images (4) 1.svg',
                            //   // width: 200,
                            //   // height: 200,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
