import 'package:flutter/material.dart';

class Page19 extends StatefulWidget {
  const Page19({super.key});

  @override
  State<Page19> createState() => _Page19State();
}

class _Page19State extends State<Page19> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [

                Column(
                  children: [
                    _buildTopContainer(screenSize),
                    _buildHeaderContainer(screenSize),
                  ],
                ),
                _buildSmallFloatingContainer(),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Color(0xffFFF3F3),
                      height: 370,
                      width: screenSize.width,
                      child: Container(

                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color(0xffABD3DB)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              SizedBox(height: 19),
                              Text(
                                "খোদা প্রাপ্তি জ্ঞানের আলোকে\n\nবিশ্ব ওলী শাহ্ সুফী হযরত ফরিদপুরী (কুঃ ছেঃ\n\n আঃ) কেবলাজান ছাহেবের",
                                style: TextStyle(height: .7,color: Colors.white,fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 30),
                              Text("নসিহত", style:TextStyle(fontSize:18,color: Colors.white),textAlign: TextAlign.center),
                              SizedBox(height: 35),
                              Text(
                                "১৯তম খণ্ড\n\nবিষয়-কামেল পীরের\n\n আবশ্যকতা\n\n(নছিহত ১১৪-১২২)",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18, height: .9,color: Colors.white),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    _buildContainerToNavigate(
                      screenSize,
                      "প্রথম পাঠ",
                      "০১ - ১০ পৃষ্ঠা",
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPage(
                              title: "প্রথম পাঠ",
                              content: "Content for প্রথম পাঠ",
                              allContents: "",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildContainerToNavigate(
                      screenSize,
                      "দ্বিতীয় পাঠ",
                      "১১ - ২০ পৃষ্ঠা",
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPage(
                              title: "দ্বিতীয় পাঠ",
                              content: "Content for দ্বিতীয় পাঠ",
                              allContents: "",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildContainerToNavigate(
                      screenSize,
                      "তৃতীয় পাঠ",
                      "২১ - ৩০ পৃষ্ঠা",
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPage(
                              title: "তৃতীয় পাঠ",
                              content: "Content for তৃতীয় পাঠ",
                              allContents: "",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildContainerToNavigate(
                      screenSize,
                      "চতুর্থ পাঠ",
                      "৩১ - ৪০ পৃষ্ঠা",
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPage(
                              title: "চতুর্থ পাঠ",
                              content: "Content for চতুর্থ পাঠ",
                              allContents: "",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildContainerToNavigate(
                      screenSize,
                      "পঞ্চম পাঠ",
                      "৪১ - ৫০ পৃষ্ঠা",
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPage(
                              title: "পঞ্চম পাঠ",
                              content: "Content for পঞ্চম পাঠ",
                              allContents: "",
                            ),
                          ),
                        );
                      },
                    ),
                    _buildContainerToNavigate(
                      screenSize,
                      "ষষ্ঠ পাঠ",
                      "৫১ - ৬৩ পৃষ্ঠা",
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPage(
                              title: "ষষ্ঠ পাঠ",
                              content: "Content for ষষ্ঠ পাঠ",
                              allContents: "",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopContainer(Size screenSize) {
    return Container(
      margin: EdgeInsets.only(top: 2,bottom: 5),
      height: 220,
      width: screenSize.width,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage("images/bgg1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [

          Center(
            child: Text(
              "খোদাপ্রাপ্তি জ্ঞানের আলোকে বিশ্ব ওলী\n\nশাহ্ সূফী হযরত ফরিদপুরী(কু:ছে:আ:)\n\nকেবলাজান সাহেবের নছিহত শরীফ\n\n",
              style: TextStyle(height: 0.6, fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
              textAlign: TextAlign.center,
            ),

          ),
          Positioned(
              top: 15,
              left: 13,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
              ) ),
          Positioned(
            top: 3,
            child:

            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.black,size: 24,)),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderContainer(Size screenSize) {
    return Container(
      height: 30,
      width: screenSize.width,
      color: Colors.white,
    );
  }

  Widget _buildSmallFloatingContainer() {
    return Positioned(
      top: 160,
      left: 135,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: AssetImage("images/bgg2.png"))
        ),


        child: Center(

          child: Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                '১৯তম খণ্ড',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainerToNavigate(Size screenSize, String title, String pageRange, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffABD3DB),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 4,
              blurRadius: 8,
            ),
          ],
        ),
        width: screenSize.width,
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: 80,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            // border: Border.all(color: Colors.white,width: 2)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Spacer(),
                Text(
                  pageRange,
                  style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                SizedBox(width: 5),
                Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 16,
                    color: Colors.white
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatefulWidget {
  final String title;
  final String content;
  final String allContents;

  const NewPage({
    super.key,
    required this.title,
    required this.content,
    required this.allContents,
  });

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  bool isClicked = false;

  bool _isExpanded = false;
  double _currentPosition = 0;

  String convertToBanglaNumber(int number) {
    const englishToBanglaDigits = {
      '0': '{০}',
      '1': '{১}',
      '2': '{২}',
      '3': '{৩}',
      '4': '{৪}',
      '5': '{৫}',
      '6': '{৬}',
      '7': '{৭}',
      '8': '{৮}',
      '9': '{৯}',
    };

    return number.toString().split('').map((digit) {
      return englishToBanglaDigits[digit] ?? digit;
    }).join();
  }

  bool isArabicText(String text) {
    // Arabic Unicode range: 0600–06FF
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text);
  }

  // List of pages initialized in initState
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    // Initialize the _pages list with different text for each page
    _pages = [
      _buildPageContent(""),
      _buildPageContent(""),
      _buildPageContent(""),
      _buildPageContent(""),
      _buildPageContent(""),
    ];
  }

  Widget _buildPageContent(String text) {
    final textBlocks = text.split('\n');
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Color(0xffABD3DB), // Set the same color for all pages
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: textBlocks.map((block) {
          final isArabic = isArabicText(block);
          return Directionality(
            textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                block,
                style: TextStyle(fontSize: 22, color: Colors.white),
                textAlign: isArabic ? TextAlign.start : TextAlign.start,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF3F3),
      appBar: AppBar(
        backgroundColor: Color(0xffABD3DB),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_backspace_outlined, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffABD3DB),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 5,
                  blurRadius: 5,
                ),
              ],
            ),
            child: PageView.builder(

              scrollDirection: Axis.vertical,
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return _pages[index];
              },
              physics: BouncingScrollPhysics(), // Optional: Adds a bouncing effect
            ),
          ),
          isClicked ==false?Positioned(
            bottom: 20,
            left: 18,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Color(0xffFFF3F3))),
              child: Row(
                children: [
                  Icon(isClicked ? Icons.pause : Icons.play_circle_rounded, color: Color(0xffABD3DB)),
                  SizedBox(width: 5),
                  Text(
                    isClicked ? "বন্ধ করুন" : "অডিও শুনুন",
                    style: const TextStyle(fontSize: 15, color: Color(0xffABD3DB)),
                  ),
                ],
              ),
            ),
          ):
          Positioned(
            bottom: 20,
            left: 18,
            right: 18,
            child: Card(
              child: Container(
                width: double.infinity,
                height: 120,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0,left: 16),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 28,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.minimize,color: Colors.black,size: 18,)),
                            SizedBox(width: 25,),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,right: 5),
                              child: Icon(Icons.play_circle_rounded,color: Color(0xffABD3DB),),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("অডিও",style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,right: 5),
                              child: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                            ),
                            SizedBox(width: 53,),
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: Icon(Icons.close_rounded,color: Colors.black, size: 18,)),
                          ],
                        ),
                      ),

                      Container(
                        height: 40,

                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  trackHeight: 2.0, // Adjust the slider thickness here
                                ),
                                child: Container(
                                  width:200,
                                  child: Slider(
                                    value: _currentPosition,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _currentPosition = newValue;
                                      });
                                    },
                                    activeColor: Colors.black,
                                    inactiveColor: Color(0xffABD3DB),
                                    min: 0,
                                    max: 100,
                                  ),
                                ),
                              ),
                              Text(
                                "00:54 ", // Current time
                                style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " -  50:00", // Total song duration
                                style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),
                              ),
                              //SizedBox(width: 7,)



                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [

                          GestureDetector(
                              onTap: (){},
                              child: Icon(Icons.fast_rewind)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.fast_forward)),
                          SizedBox(width: 2,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.download_sharp)),
                          SizedBox(width: 2,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.skip_next)),
                          SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),

                        ],
                      )




                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 18,
            child: Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFF3F3),
              ),
              child: Text(
                convertToBanglaNumber(_currentPage + 1),
                style: const TextStyle(fontSize: 18, color: Color(0xffABD3DB)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
