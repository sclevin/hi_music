import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/auto_slideup_panel.dart';


@RoutePage()
class TopicDetailPage extends StatefulWidget {
  final String id;

  const TopicDetailPage({
    super.key,
    @PathParam('id') required this.id,
  });

  @override
  State<TopicDetailPage> createState() => _TopicDetailPageState();
}

class _TopicDetailPageState extends State<TopicDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hero image section
          Hero(
            tag: widget.id,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Topic ${widget.id}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Sliding panel
          AutoSlideUpPanel(
            minHeight: MediaQuery.of(context).size.height * 0.5,
            maxHeight: MediaQuery.of(context).size.height * 0.9,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Topic Details',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                          'nisi ut aliquip ex ea commodo consequat.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}