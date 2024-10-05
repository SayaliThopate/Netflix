import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("NetFlix"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),

        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-movie-ad-design-template-49cae0ff516599ec8637843f2ad23978.jpg?ts=1706023363"),

                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://rukminim2.flixcart.com/image/850/1000/xif0q/poster/q/l/o/small-avengers-endgame-marvel-superher-avengers-endgame-marvel-original-imaghyzbxhsgemz3.jpeg?q=20&crop=false"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg"),

                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://lh3.googleusercontent.com/proxy/MbT8WmyxBK9jKigBqkYi1QjJ0KbU_LgYmN53UDZG3resoheI52CYaJudzfr56SqEqDNeVTU_P3UCcJG3_P2TPP6sOUUlPIeDrie5xquwnY_iNl0yxaz1eHaE4emGPn-XHx8PoU5Bz2jLgsfMphAfAQ"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUTszrLrNGo4g9w8rHkvKuoccT1s5HiwjsRg&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLynIMKefbzRzHST0GJJ99z60xu9dE7ppsVg&s"),
                      ),
                    ],
                  ),

                )
              ],
            );

          }
        )
      ),
    );
  }
}
