import 'package:flutter/material.dart';

class NewsHome extends StatelessWidget {
  final List<Map<String, String>> news = List.generate(
    20,
    (i) => {
      'title': 'Заголовок новости ${i + 1}',
      'subtitle': 'Описание новости ${i + 1}',
      'image': 'https://picsum.photos/seed/news$i/400/200',
    },
  );

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Новости'),),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: news.length,
        itemBuilder: (context, index){
          final item = news[index];
          return Container(
  margin: EdgeInsets.symmetric(vertical: 15),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
        blurRadius: 12,
        offset: Offset(0, 6),
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.network(
              item['image']!,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 12,
              bottom: 12,
              right: 12,
              child: Text(
                item['title']!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: const Color.fromARGB(137, 0, 0, 0),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            item['subtitle']!,
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 66, 66, 66),
            ),
          ),
        ),
      ],
    ),
  ),
);
  } ),
  );  
  }
}

