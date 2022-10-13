import 'dart:ui';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage(this.scrollController);
  final ScrollController scrollController;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final double _padding = 20;
  final String _fakeSuggestion =
      "Members of the Orange County Fire Rescue, the Orange County Sheriff’s Office and the National Guard guided residents and their pets through floodwaters during rescue efforts Thursday in Orange County, Florida ";

  final String _randomPic =
      "https://loremflickr.com/320/240";

  bool isRefresh = false;

  Future tempFuture() async {
    setState(() {
      isRefresh = !isRefresh;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      isRefresh = !isRefresh;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              topicLine(),
              _listViewCard,
              _listViewCard,
              _listViewCard,
              _listViewCard,
              _listViewCard,
              _listViewCard,
              _listViewCard,
            ],
          ),
        ));
  }

  Widget get _listViewB => ListView.builder(
        itemCount: 10,
        controller: widget.scrollController,
        itemBuilder: (context, index) {
          return _listViewCard;
        },
      );

  Widget get _listViewCard => Card(
        color: Color.fromARGB(255, 137, 196, 236),
        child: ListTile(
          trailing: Icon(Icons.trending_up_sharp,
              color: Color(0xff504a78)),
          leading: InkWell(
            onTap: () {
              debugPrint("tapped");
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(_randomPic),
            ),
          ),
          title: Wrap(
            runSpacing: 10,
            direction: Axis.horizontal,
            children: [
              _listCardTitle("Username "),
              _suggestionText(
                  fakeSuggestion: _fakeSuggestion),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      );

  Widget _listCardTitle(String text) =>
      Text(text, style: titleTextStyle);
}

class topicLine extends StatelessWidget {
  const topicLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQueryData.fromWindow(window).size.height /
              20,
      child: Card(
        color: Color(0xff504a78),
        child: Center(
          child: Text(
            "Bu Hafta Öne Çıkanlar",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _suggestionText extends StatelessWidget {
  const _suggestionText({
    Key? key,
    required String fakeSuggestion,
  })  : _fakeSuggestion = fakeSuggestion,
        super(key: key);

  final String _fakeSuggestion;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          debugPrint("tapped");
        },
        child: Text(
          _fakeSuggestion,
          overflow: TextOverflow.ellipsis,
        ));
  }
}

const titleTextStyle = TextStyle(
    letterSpacing: 1,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black);
