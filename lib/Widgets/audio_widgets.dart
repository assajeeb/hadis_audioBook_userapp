

import 'package:flutter/material.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  int _currentPlayingIndex = -1; // Track the currently playing audio index
  double _currentPosition = 0; // Track the slider's position for the playing audio

  List audioList=[
    {
      "index": 0,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:05:12",
      "photo": "images/b1.png",
      "text3": "১ম খণ্ড",
      "color": Colors.blueAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 1
    },
    {
      "index": 1,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:12:33",
      "photo": "images/b2.png",
      "text3": "২য় খণ্ড",
      "color": Colors.greenAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 2
    },
    {
      "index": 2,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 00:58:45",
      "photo": "images/b3.png",
      "text3": "৩য় খণ্ড",
      "color": Colors.redAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 3
    },
    {
      "index": 3,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:10:23",
      "photo": "images/b4.png",
      "text3": "৪র্থ খণ্ড",
      "color": Colors.yellowAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 4
    },
    {
      "index": 4,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:15:40",
      "photo": "images/b5.png",
      "text3": "৫ম খণ্ড",
      "color": Colors.orangeAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 5
    },
    {
      "index": 5,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 00:52:30",
      "photo": "images/b6.png",
      "text3": "৬ষ্ঠ খণ্ড",
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 6
    },
    {
      "index": 6,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:08:15",
      "photo": "images/b7.png",
      "text3": "৭ম খণ্ড",
      "color": Colors.cyanAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 7
    },
    {
      "index": 7,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:17:42",
      "photo": "images/b8.png",
      "text3": "৮ম খণ্ড",
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 8
    },
    {
      "index": 8,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:18:10",
      "photo": "images/b9.png",
      "text3": "৯ম খণ্ড",
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 9
    },
    {
      "index": 9,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b10.png",
      "text3": "১০ম খণ্ড",
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 10
    },
    {
      "index": 10,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b11.png",
      "text3": '১১তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 11
    },
    {
      "index": 11,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b12.png",
      "text3": '১২তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 12
    },
    {
      "index": 12,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b13.png",
      "text3": '১৩তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 13
    },
    {
      "index": 13,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b14.png",
      "text3": '১৪তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 14
    },
    {
      "index": 14,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b15.png",
      "text3": '১৫তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 15
    },
    {
      "index": 15,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b16.png",
      "text3":  '১৬তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 16
    },
    {
      "index": 16,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b17.png",
      "text3":  '১৭তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 17
    },
    {
      "index": 17,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b18.png",
      "text3":  '১৮তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 18
    },
    {
      "index": 18,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b19.png",
      "text3":  '১৯তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 19
    },
    {
      "index": 19,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b20.png",
      "text3":  '২০তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 20
    },
    {
      "index": 20,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b21.png",
      "text3": '২১তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 21
    },
    {
      "index": 21,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b22.png",
      "text3":  '২২তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 22
    },
    {
      "index": 22,
      "text1": "বিশ্বওলী শাহ্সুফি হযরত ফরিদপুরী \n\n(কুঃ ছেঃ আঃ) ছাহেব",
      "text2": "Duration: 01:21:21",
      "photo": "images/b23.png",
      "text3":  '২৩তম খণ্ড',
      "color": Colors.purpleAccent,
      "isPlaying": false,
      "currentPosition": 0,
      "onPlayPressed": "togglePlayState",
      "onSliderChanged": "updatePosition",
      "number": 23
    },

  ];


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 220,
              width: screenSize.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bgg1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(child: Text("খোদাপ্রাপ্তি জ্ঞানের আলোকে বিশ্বওলী \n\n শাহ্সূফী হযরত ফরিদপুরী(কু:ছে:আ:)\n\n কেবলাজান সাহেবের \n\n নছিহত",
                style: TextStyle(height: 0.7, fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),textAlign: TextAlign.center,)),
            ),
            SizedBox(height: 8,),

            Flexible(

              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: audioList.length,
                itemBuilder: (BuildContext, index){
                  final data= audioList[index];
                  return Card(
                    elevation: 10.0,
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text("jhhhhh"),
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

class AudioList extends StatefulWidget {
  final int index;
  final String text1;
  final String text2;
  final String text3;
  final Color? color;
  final String? photo;
  final bool isPlaying;
  final double currentPosition;
  final VoidCallback onPlayPressed;
  final ValueChanged<double> onSliderChanged;

  AudioList({
    required this.index,
    required this.text1,
    required this.text2,
    required this.text3,
    this.photo,
    required this.onPlayPressed,
    required this.isPlaying,
    required this.currentPosition,
    required this.onSliderChanged,
    this.color,
  });

  @override
  State<AudioList> createState() => _AudioListState();
}

class _AudioListState extends State<AudioList> {
  List colors = [Colors.red, Colors.green, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              //color: Color(Random().nextInt(0xffffffff)).withAlpha(0xff),

              color: widget.color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        //color: Color(0xffE1DEDE),
                        image: DecorationImage(image: AssetImage("images/bgg4.png"))
                      ),
                    child: Center(
                      child: Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffABD3DB)),
                        child: Center(
                            child: Text(
                              widget.text3,
                              style: TextStyle(fontSize: 10, color: Colors.black),
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.text1,
                      style: TextStyle(color: Colors.white, height: .5),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.text2,
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    onPressed: widget.onPlayPressed,
                    icon: Icon(
                      widget.isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Color(0xffABD3DB),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (widget.isPlaying) buildMusicPlayerUI(),
        ],
      ),
    );
  }

  Widget buildMusicPlayerUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xffFFF3F3),
          border: Border.all(color: Color(0xffABD3DB),width: .6),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 2),
                spreadRadius: 1,
                blurRadius: 10
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Now Playing: ${widget.text3}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                      onPressed: widget.onPlayPressed,
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2.0, // Adjust the slider thickness here
                  ),
                  child: Container(
                    width: 250,
                    child: Slider(
                      value: widget.currentPosition,
                      onChanged: widget.onSliderChanged,
                      activeColor: Colors.black,
                      inactiveColor: Color(0xffABD3DB),
                      min: 0,
                      max: 100,
                    ),
                  ),
                ),
                Text(
                  "00:54 ", // Current time
                  style: TextStyle(color: Colors.black,fontSize: 12),
                ),
                Text(
                  " -  50:00", // Total song duration
                  style: TextStyle(color: Colors.black,fontSize: 12),
                ),
                SizedBox(width: 3,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.fast_rewind)),
                IconButton(onPressed: (){}, icon: Icon(Icons.fast_forward)),
                SizedBox(width: 5,),
                IconButton(onPressed: (){}, icon: Icon(Icons.download_sharp)),
                SizedBox(width: 5,),
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous)),
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_next)),
                SizedBox(width: 30,),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
