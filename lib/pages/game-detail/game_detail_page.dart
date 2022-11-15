import 'package:flutter/material.dart';

class GameDetailPage extends StatelessWidget {
  const GameDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * .55,
            pinned: true,
            elevation: 0,
            leadingWidth: 32,
            leading: IconButton(
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              onPressed: () {
                print('hola');
              },
              icon: Icon(Icons.chevron_left_rounded),
              iconSize: 32,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Placeholder(
                      fallbackWidth: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => Text('$index'),
        ),
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * .55,
            pinned: true,
            elevation: 0,
            leadingWidth: 32,
            leading: IconButton(
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              onPressed: () {
                print('hola');
              },
              icon: Icon(Icons.chevron_left_rounded),
              iconSize: 32,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Expanded(
                    child: Placeholder(
                      fallbackWidth: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => Text('$index'),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //       (context, index) => Text('$index'),
          //       childCount: 100),
          // ),
        ],
      ),
    );
  }
}
