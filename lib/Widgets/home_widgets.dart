import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidgets extends StatefulWidget {
  const HomeWidgets({super.key});

  @override
  State<HomeWidgets> createState() => _HomeWidgetsState();
}

class _HomeWidgetsState extends State<HomeWidgets> {

  @override
  void initState() {
    GetAllBooksData();
    super.initState();
  }

  bool _showAllRecentTiles = false; // To toggle between showing 3 and 6 recent tiles
  bool _showAllTiles = false; // To toggle between showing 6 and all tiles in the category

  // Variable to store the search query
  String _searchQuery = "";

  final List<String> _tileTexts = [
    '১ম খণ্ড',
    '২য় খণ্ড',
    '৩য় খণ্ড',
    '৪র্থ খণ্ড',
    '৫ম খণ্ড',
    '৬ষ্ঠ খণ্ড',
    '৭ম খণ্ড',
    '৮ম খণ্ড',
    '৯ম খণ্ড',
    '১০ম খণ্ড ',
    '১১তম খণ্ড',
    '১২তম খণ্ড',
    '১৩তম খণ্ড',
    '১৪তম খণ্ড',
    '১৫তম খণ্ড',
    '১৬তম খণ্ড',
    '১৭তম খণ্ড',
    '১৮তম খণ্ড',
    '১৯তম খণ্ড',
    '২০তম খণ্ড',
    '২১তম খণ্ড',
    '২২তম খণ্ড',
    '২৩তম খণ্ড',
  ];
  final List<String> _tileButton = [
    '/page1',
    '/page2',
    '/page3',
    '/page4',
    '/page5',
    '/page6',
    '/page7',
    '/page8',
    '/page9',
    '/page10',
    '/page11',
    '/page12',
    '/page13',
    '/page14',
    '/page15',
    '/page16',
    '/page17',
    '/page18',
    '/page19',
    '/page20',
    '/page21',
    '/page22',
    '/page23',
  ];
  final List<String> _tileIndex= [

    "আদাবুল মুরীদ\n\n(নছিহত ১- ৩)",
    "তরিকতের পাঁচ রোকন\n\n(নছিহত ৪- ৭)",
    "হযরত মুজাদ্দেদ\n\nআলফেছানী(রা:) ও হযরত\n\n খাজা বাকীবিল্লাহ (র:)\n\n(নছিহত ৮ - ১৩)",
    "হযরত বায়জীদ বোস্তামী\n\n(র:) ও হযরত বাহাউদ্দীন\n\n নকশবন্দ(র:)\n\n(নছিহত ১৪- ১৯)",
    "লতিফা সমূহের পরিচিতি\n\n(নছিহত ২০- ২৬)",
    "সুলতানুল আজকার ও\n\n নাফী - এসবাত জেকের\n\n(নছিহত ২৭- ৩০)",
    "আত্মদর্শনের পথে\n\nমাকাম - মঞ্জিল\n\n(নছিহত ৩১ - ৩৫)",
    "বেলায়েতে নবুয়ত ও\n\n কামালাতে নবুয়ত\n\n(নছিহত ৩৬ - ৪৫) ",
    "মুহাররম\n\n(নছিহত ৪৬ - ৫১)",
    "হকিকতে আম্বিয়া ও\n\n হকিকতে এলাহিয়া\n\n(নছিহত  ৫২ - ৬১)",
    "জাত ও সিফাত\n\n(নছিহত ৬২ - ৬৬)",
    "ফানা ও বাকা\n\n(নছিহত ৬৭ - ৭১)",
    "তাজাল্লীয়াতে জাত,\n\n তাজাল্লীয়াতে সিফাত ও\n\n তাজাল্লীয়াতে আফ্য়াল\n\n(নছিহত ৭২ - ৮৫)",
    "তৌহিদে ওজুদী ও\n\n তৌহিদে শহুদী\n\n(নছিহত ৮৬ - ৯২)",
    "ঈদে মিলাদুন্নবী ও জাকের\n\nপার্টির আদর্শ - লক্ষ্য\n\n(নছিহত ৯৩-৯৭)",
    "ইবাদত ও মহব্বত\n\n(নছিহত ৯৮ - ১০১)",
    "মেরাজতত্ত্ব\n\n(নছিহত ১০২-১০৭)",
    "জাহেরী ও বাতেনী শরীয়ত\n\nএবং সূফীবাদ ও বিজ্ঞান\n\n(নছিহত ১০৮ -১১৩)",
    "কামেল পীরের\n\n আবশ্যকতা\n\n(নছিহত ১১৪-১২২)",
    "রমজান ও ঈদ\n\n(নছিহত  ১২৩ - ১২৭)",
    "ওজিফার গুরুত্ব ও উরশ\n\nশরীফের তাৎপর্য\n\n(নছিহত ১২৮ - ১৩১)",
    "হযরত শাহ্সূফী\n\n এনায়েতপুরী ( কু: ছে:\n\n আ:) ছাহেব\n\n(নছিহত  ১৩২ - ১৩৭)",
    "বিশ্ব জাকের মঞ্জিলের\n\n পরিচালনা পদ্ধতি\n\n(নছিহত)"





  ];

  List<int> _recentTiles = [];

  // Modification by Sajeeb start

  List AllBookList = [];
  bool isLoaded = false;
  // end


  // Function to add a clicked tile to the recent list
  void _addRecentTile(int index) {
    setState(() {
      // If tile is already in the list, remove it
      if (_recentTiles.contains(index)) {
        _recentTiles.remove(index);
      }

      // Add the tile to the beginning of the list
      _recentTiles.insert(0, index);

      // Ensure the list contains at most 6 items
      if (_recentTiles.length > 4) {
        _recentTiles = _recentTiles.sublist(0, 4);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    // Filter the tiles based on the search query
    final filteredTiles = _tileTexts.asMap().entries.where((entry) => entry.value.contains(_searchQuery)).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text("নছিহত শরীফ",style: TextStyle(fontWeight: FontWeight.w500,),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 15),
            child: IconButton(onPressed: (){},
                icon:const Icon(Icons.notifications_none,size: 30,)),
          )
        ],

      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding:const EdgeInsets.all(10),
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/bgg1.png"),fit: BoxFit.fill),
                    ),

                    child: const Center(

                      child:Text(
                        "খোদাপ্রাপ্তি জ্ঞানের আলোকে বিশ্ব ওলী\n\nশাহ্ সূফী হযরত ফরিদপুরী(কু:ছে:আ:)\n\nকেবলাজান সাহেবের নছিহত শরীফ\n\n আদাবুল মুরীদ\n\n( নছিহত ১- ৩)  ",
                        style: TextStyle(height: 0.7, fontSize: 13, fontWeight: FontWeight.w500,color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),



                  ),
              ),
              SizedBox(height: 20,),

              const ListTile(leading: Icon(Icons.person_outline),
                title: Text("About us"),),
              const ListTile(leading: Icon(Icons.favorite_outline),
                title: Text("Favourite"),),
             const  ListTile(leading: Icon(Icons.contacts_outlined),
                title: Text("Contact us"),),
             const ListTile(leading: Icon(Icons.share),
                title: Text("Share"),),
              SizedBox(height: 70,),




            ],
          ),
        ),

      ),

      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Banner with image slideshow and dots...
              Container(
                height: 220,
                width: screenSize.width,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bgg1.png",),
                    fit: BoxFit.cover,
                  ),
                ),

                  child:const Center(

                    child: Text(
                      "খোদাপ্রাপ্তি জ্ঞানের আলোকে বিশ্ব ওলী\n\nশাহ্ সূফী হযরত ফরিদপুরী(কু:ছে:আ:)\n\nকেবলাজান সাহেবের নছিহত শরীফ",
                      style: TextStyle(height: 0.7, fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),

              ),
              SizedBox(height: 18),

              // Search field
              Container(
                margin:const EdgeInsets.symmetric(horizontal: 14),
                height: 40,
                child: TextField(
                  cursorColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;  // Update the search query
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.search, color: Colors.grey),
                    hintText: "এখানে খুঁজুন",
                    hintStyle:const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:const BorderSide(color:Color(0xffABD3DB)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:const BorderSide(color: Color(0xffABD3DB)),
                    ),
                    contentPadding:const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 4),
                      child: Row(
                        children: [
                         const Text("সাম্প্রতিকগুলি",style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _showAllRecentTiles = !_showAllRecentTiles;
                              });
                            },
                            child: Text(
                              _showAllRecentTiles ? "কম দেখুন" : "সবগুলি দেখুন",
                              style:const TextStyle(color: Color(0xffABD3DB)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),

                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _recentTiles.isNotEmpty?const  Color(0xffFFF3F3):Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

                          child: GridView.builder(

                            shrinkWrap: true,
                            physics:const NeverScrollableScrollPhysics(),
                            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1,
                            ),
                            // Show 3 tiles if _showAllRecentTiles is false, otherwise show up to 6
                            itemCount: _showAllRecentTiles
                                ? _recentTiles.length
                                : (_recentTiles.length > 2 ? 2 : _recentTiles.length),
                            itemBuilder: (context, index) {
                              final tileIndex = _recentTiles[index];
                              return  Container(
                                decoration: BoxDecoration(
                                  image:const DecorationImage(image: AssetImage("images/bgg2.png")),

                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(_tileIndex[tileIndex],style:const TextStyle(
                                          height: .5, color: Colors.white,fontSize: 11,fontWeight: FontWeight.bold
                                      ),textAlign: TextAlign.center,),
                                      SizedBox(height: 3,),
                                      TextButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, _tileButton[tileIndex]);
                                        },

                                        child: Text(_tileTexts[tileIndex],
                                          style:const TextStyle(color: Colors.black),),
                                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),

                              );
                            },
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Categories section with search filtering
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 4),
                      child: Row(
                        children: [
                          Text("বিভাগগুলি", style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _showAllTiles = !_showAllTiles;
                              });
                            },
                            child: Text(
                              _showAllTiles ? "কম দেখুন" : "সবগুলি দেখুন",
                              style: TextStyle(color: Color(0xffABD3DB)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1,
                        ),
                        itemCount: _showAllTiles ? AllBookList.length : (AllBookList.length > 4 ? 4 : AllBookList.length),
                        // Display only the filtered tiles
                        itemBuilder: (context, index) {
                          var tileIndex = AllBookList[index];  // Get the actual index of the tile

                          return GestureDetector(
                            onTap: () {
                              _addRecentTile(tileIndex);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("images/bgg2.png")),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(tileIndex['Chapters']['1']['name'],style: TextStyle(
                                        height: .5, color: Colors.white,fontSize: 11,fontWeight: FontWeight.bold
                                    ),textAlign: TextAlign.center,),
                                    SizedBox(height: 9,),
                                    Text(tileIndex['Chapters']['1']['subtitle'],style: TextStyle(
                                      height: .5, color: Colors.white,fontSize: 11,fontWeight: FontWeight.bold
                                    ),textAlign: TextAlign.center,),
                                    SizedBox(height: 3,),
                                    TextButton(
                                      onPressed: () {
                                        _addRecentTile(tileIndex);
                                        Navigator.pushNamed(context, _tileButton[tileIndex]);
                                      },
                                      child: Text(tileIndex['Chapters']['1']['titile']),
                                      style: ButtonStyle(
                                        backgroundColor:WidgetStateProperty.all(Colors.white),
                                        foregroundColor: WidgetStateProperty.all(Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
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
  
  Future<void> GetAllBooksData()async{
  var books =   await FirebaseFirestore.instance.collection("books").get();

  List DocsList = books.docs;
  setState(() {
    AllBookList = DocsList.toList();
    isLoaded = true;
  });
  print(DocsList[0]['bookName']);
  }
}
