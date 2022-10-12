import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabbar_view.dart';

class HomePageApp extends StatefulWidget {
  HomePageApp(this.controller, {super.key});

  ScrollController controller;

  @override
  State<HomePageApp> createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  final String _fakeSuggestion =
      "Members of the Orange County Fire Rescue, the Orange County Sheriff’s Office and the National Guard guided residents and their pets through floodwaters during rescue efforts Thursday in Orange County, Florida ";

  final String _randomPic =
      "https://loremflickr.com/320/240";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff504a78),
        body: _listViewB);
  }

  Widget get _listViewB => ListView.builder(
        itemCount: 10,
        controller: widget.controller,
        itemBuilder: (context, index) {
          return _listViewCard;
        },
      );

  Widget get _listViewCard => Card(
        color: Color.fromARGB(255, 137, 196, 236),
        child: ListTile(
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
              _placeHolder,
              _suggestionText(
                  fakeSuggestion: _fakeSuggestion),
              _footerButtonRow,
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      );

  Widget get _footerButtonRow => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _iconLabelCommentButton,
          _iconLabelREplyButton,
          _iconLabelFavButton,
          _iconLabelShareButton
        ],
      );

  Widget get _iconLabelCommentButton => InkWell(
        child: _iconCommentLabel("1"),
        onTap: () {},
      );

  Widget get _iconLabelREplyButton => InkWell(
        child: _iconReplyLabel("1"),
        onTap: () {},
      );

  Widget get _iconLabelFavButton => InkWell(
        child: _iconFavLabel("1"),
        onTap: () {},
      );

  Widget get _iconLabelShareButton => InkWell(
        child: _iconShareLabel("1"),
        onTap: () {},
      );

  Widget _iconCommentLabel(String text) => Wrap(
        spacing: 5,
        children: [
          const Icon(
            Icons.comment_rounded,
            color: Color(0xff504a78),
          ),
          Text(text),
        ],
      );

  Widget _iconReplyLabel(String text) => Wrap(
        spacing: 5,
        children: [
          const Icon(
            Icons.reply_all,
            color: Color(0xff504a78),
          ),
          Text(text),
        ],
      );

  Widget _iconFavLabel(String text) => Wrap(
        spacing: 5,
        children: [
          const Icon(
            Icons.favorite,
            color: Color(0xff504a78),
          ),
          Text(text),
        ],
      );

  Widget _iconShareLabel(String text) => Wrap(
        spacing: 5,
        children: [
          const Icon(
            Icons.share,
            color: Color(0xff504a78),
          ),
          Text(text),
        ],
      );

  Widget _listCardTitle(String text) =>
      Text(text, style: titleTextStyle);

  Widget get _placeHolder => InkWell(
        onTap: () {
          debugPrint("tapped");
        },
        child: ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(150), // Image radius
              child: Image(
                  image: NetworkImage(_randomPic),
                  fit: BoxFit.cover),
            )),
      );
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
        child: Text(_fakeSuggestion));
  }
}
