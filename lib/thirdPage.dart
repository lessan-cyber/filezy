import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff2252fd) ,
      appBar: AppBar(
        backgroundColor: const Color(0xff2252fd) ,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
            color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text('My Files',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_important_outlined,
              color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height:size.height * 0.02,),

          Container(

            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            height: size.height ,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  children: [
                    Container(
                    width: size.width * 0.9,
                    height: size.height * 0.23,
                      decoration: BoxDecoration(
                      color: const Color(0xff2252fd),
                      borderRadius: BorderRadius.circular(20),

                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfffd8b22),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.folder_outlined,
                                      color: Colors.white,
                                      size: 30,),
                                  ),
                                ),
                                Container(
                                  width: 125,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text('Clear Storage',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.03,),
                            LinearPercentIndicator(
                              //animateFromLastPercent: true,
                              animation: true,
                              animationDuration: 1000,
                              width: size.width * 0.855,
                              lineHeight: 12.0,
                              percent: 0.5,
                              progressColor: const Color(0xfffd8b22),
                                barRadius: const Radius.circular(10),
                            ),
                            SizedBox(height: size.height * 0.01,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('90 GB of 100 GB',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                ),
                                Text('90%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.02,),
                            const Row(
                              children: [
                                Text("You used 90% of your storage",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                              ],
                            )
                          ]
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04,),
                    Row(
                      children: [
                        //Options(size: size)
                      ],
                    ),
                  ],
              ),
            ),
          )
        ],
      )

    );
  }
}

class Options extends StatelessWidget {
  const Options({
    super.key,
    required this.size,
    required this.image,
    required this.label ,
    required this.couleur
  });

  final Size size;
  final String image;
  final String label ;
  final Color couleur;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width * 0.15,
          height: size.width * 0.15,
          decoration: BoxDecoration(
            color: const Color(0xfff1f4ff),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(child: Image.asset("assets/icons/document.png",
          height: 50,
          width: 50,)) ,
        ),
        const Center(child: Text("docs"))
      ],
    );
  }
}

