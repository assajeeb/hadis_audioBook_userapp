import 'package:flutter/material.dart';


class HadisWidget extends StatefulWidget {
  const HadisWidget({super.key});

  @override
  State<HadisWidget> createState() => _HadisWidgetState();
}

class _HadisWidgetState extends State<HadisWidget> with TickerProviderStateMixin {
  // Boolean state to control the expanded state of the container
  bool _isExpanded = false;
  double _currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                // Container(
                //   height: 220,
                //   width: screenSize.width,
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("images/bgg1.png"),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                //  child:  Center(
                //    child: Text(
                //      "বিষয় ভিত্তিক কুরআন শরীফ ও হাদিস \n\nশরীফের রেফারেন্স ",
                //      style: TextStyle(height: 0.7, fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
                //      textAlign: TextAlign.center,
                //    ),
                //  ),
                // ),
                SizedBox(height: 15,),
                
                Expanded(
                    child: Container(
                      child: Center(child: Text("Coming soon...")),
                    ))

                // Expanded(
                //   child: SingleChildScrollView(
                //     child: Column(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                //           child: Container(
                //
                //             width: MediaQuery.of(context).size.width,
                //             height: 250,
                //             decoration: BoxDecoration(
                //              border: Border.all(
                //                width: 12,
                //                color: Color(0xffE1DEDE),
                //              ),
                //
                //               color: Color(0xffABD3DB),
                //             ),
                //
                //
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(15.0),
                //           child: Container(
                //
                //             width: MediaQuery.of(context).size.width,
                //             height: 250,
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                 width: 12,
                //                 color: Color(0xffE1DEDE),
                //               ),
                //               color: Color(0xffABD3DB),
                //             ),
                //
                //
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(15.0),
                //           child: Container(
                //
                //             width: MediaQuery.of(context).size.width,
                //             height: 250,
                //             decoration: BoxDecoration(
                //               border: Border.all(
                //                 width: 12,
                //                 color: Color(0xffE1DEDE),
                //               ),
                //               color: Color(0xffABD3DB),
                //             ),
                //
                //
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),


              ],
            ),

            //This container expands when the button is clicked
            // Positioned(
            //   top: 290,
            //   child: Card(
            //     child: AnimatedContainer(
            //       width: screenSize.width,
            //       duration: Duration(milliseconds: 500),
            //       height: _isExpanded ? 400 : 240, // Change height based on the state
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(5),
            //
            //         color: Color(0xffABD3DB),
            //       ),
            //       child: _isExpanded
            //           ? Column(
            //         children: [
            //           SizedBox(height: 50),
            //
            //           // music player
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //             child: Container(
            //               width: double.infinity,
            //               height: 120,
            //
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(10),
            //
            //               ),
            //               child: Column(
            //
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                  Container(
            //                    height: 28,
            //                    child: Row(
            //                       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                      // crossAxisAlignment: CrossAxisAlignment.center,
            //                      children: [
            //                        IconButton(onPressed: (){}, icon: Icon(Icons.minimize,color: Colors.black,size: 18,)),
            //                        SizedBox(width: 83,),
            //
            //                        Padding(
            //                          padding: const EdgeInsets.only(top: 8.0,right: 5),
            //                          child: Icon(Icons.play_circle_rounded,color: Color(0xff02C17F),),
            //                        ),
            //
            //
            //                        Padding(
            //                          padding: const EdgeInsets.only(top: 8.0),
            //                          child: Text("২য়-খণ্ড",style: TextStyle(fontSize: 16),),
            //                        ),
            //                        Padding(
            //                          padding: const EdgeInsets.only(top: 8.0,right: 5),
            //                          child: Icon(Icons.arrow_drop_down,color: Colors.grey,),
            //                        ),
            //                        SizedBox(width: 53,),
            //                        IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded,color: Colors.black, size: 18,)),
            //                      ],
            //                    ),
            //                  ),
            //
            //                   Container(
            //                     height: 40,
            //
            //
            //                     child: Padding(
            //                       padding: const EdgeInsets.only(top: 16.0),
            //                       child: Row(
            //                         crossAxisAlignment: CrossAxisAlignment.center,
            //                         mainAxisAlignment: MainAxisAlignment.center,
            //
            //                         children: [
            //                           SliderTheme(
            //                           data: SliderTheme.of(context).copyWith(
            //                           trackHeight: 2.0, // Adjust the slider thickness here
            //                       ),
            //                             child: Container(
            //                               width:250,
            //                               child: Slider(
            //                                 value: _currentPosition,
            //                                 onChanged: (newValue) {
            //                                   setState(() {
            //                                     _currentPosition = newValue;
            //                                   });
            //                                 },
            //                                 activeColor: Colors.black,
            //                                 inactiveColor: Color(0xff02C17F),
            //                                 min: 0,
            //                                 max: 100,
            //                               ),
            //                             ),
            //                           ),
            //                           Text(
            //                             "00:54 ", // Current time
            //                             style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),
            //                           ),
            //                           Text(
            //                             " -  50:00", // Total song duration
            //                             style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),
            //                           ),
            //                           SizedBox(width: 7,)
            //
            //
            //
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Row(
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       children: [
            //                         IconButton(onPressed: (){}, icon: Icon(Icons.fast_rewind)),
            //                         IconButton(onPressed: (){}, icon: Icon(Icons.fast_forward)),
            //                         SizedBox(width: 5,),
            //                         IconButton(onPressed: (){}, icon: Icon(Icons.download_sharp)),
            //                         SizedBox(width: 5,),
            //                         IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous)),
            //                         IconButton(onPressed: (){}, icon: Icon(Icons.skip_next)),
            //                         SizedBox(width: 30,),
            //                         IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
            //
            //                       ],
            //                     ),
            //
            //                   )
            //
            //
            //
            //                 ],
            //               ),
            //             ),
            //           ),
            //
            //
            //           // Add your music player UI here (e.g., seek bar, play/pause button)
            //         ],
            //       )
            //           : Container() // Empty container when collapsed
            //     ),
            //   ),
            // ),
            //
            // Positioned(
            //   right: 17,
            //   bottom: 90,
            //   child: CircleAvatar(
            //     radius: 14,
            //     backgroundColor: Colors.white,
            //     child: Text("১"),
            //   ),
            // ),
            //
            // Positioned(
            //   right: 10,
            //   top: 470,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         _isExpanded = !_isExpanded; // Toggle the expanded state
            //       });
            //     },
            //     child: Row(
            //       children: [
            //         Text(
            //           _isExpanded ? "বন্ধ করুন" : "অডিও শুনুন",
            //           style: TextStyle(color: Colors.black),
            //         ),
            //         SizedBox(width: 5),
            //         Icon(
            //           _isExpanded
            //               ? Icons.pause
            //               : Icons.play_circle_rounded,
            //           color: Color(0xff02C17F),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
