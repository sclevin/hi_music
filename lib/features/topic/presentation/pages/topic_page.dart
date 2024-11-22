import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hi_music/app/routers.gr.dart';


@RoutePage()
class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  final List<TopicItem> topics = List.generate(
    20,
        (index) => TopicItem(
      id: 'topic_$index',
      title: 'Topic ${index + 1}',
      description: 'Description for topic ${index + 1}',
      color: Colors.primaries[index % Colors.primaries.length],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return GestureDetector(
            onTap: () => context.router.push(TopicDetailRoute(id: "$index")),
            child: Hero(
              tag: topic.id,
              child: Card(
                color: topic.color,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        topic.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        topic.description,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TopicItem {
  final String id;
  final String title;
  final String description;
  final Color color;

  TopicItem({
    required this.id,
    required this.title,
    required this.description,
    required this.color,
  });
}