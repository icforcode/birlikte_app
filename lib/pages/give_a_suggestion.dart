import 'package:flutter/material.dart';

class GiveA_SuggestionPage extends StatefulWidget {
  const GiveA_SuggestionPage({super.key});

  @override
  State<GiveA_SuggestionPage> createState() =>
      _GiveA_SuggestionPageState();
}

class _GiveA_SuggestionPageState
    extends State<GiveA_SuggestionPage> {
  final String _profilePicUrl =
      "https://avatars.githubusercontent.com/u/48881290?v=4";

  final int _tweetMinLine = 5;
  final int _tweetMaxLine = 15;

  bool isHeaderClose = false;
  double lastOffset = 0;

  var _sentencelimit = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: _backtoHomeTitle(),
          iconTheme: const IconThemeData(
            color: Color(0xff504a78),
          )),
      body: _tweetCard,
    );
  }

  Text _backtoHomeTitle() {
    return Text("Ana Sayfa",
        style: _titleTextStyle.copyWith(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 84, 76, 141),
        ));
  }

  Widget get _shareButton => TextButton(
      onPressed: () {}, child: const Text("Paylaş"));

  Widget get _tweetCard => SafeArea(
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_profilePicUrl),
            ),
            title: Wrap(
              runSpacing: 10,
              direction: Axis.horizontal,
              children: [
                _listCardTitle("Birlikte Çözelim"),
                _tweetPlace,
                _shareButtonRow()
              ],
            ),
          ),
        ),
      );

  Row _shareButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _tweetShareWithPhoto,
        _tweetShareWithVideo,
        _tweetShareWithDocument,
        _shareButton,
      ],
    );
  }

  Widget get _tweetPlace => TextField(
        decoration: const InputDecoration(
          hintText:
              '#Sorunlarımızın "Birlikte" üstesinden gelebiriz. ',
        ),
        maxLength: _sentencelimit,
        minLines: _tweetMinLine,
        maxLines: _tweetMaxLine,
      );

  Widget _listCardTitle(String text) =>
      Text(text, style: _titleTextStyle);

  Widget get _tweetShareWithPhoto => ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.add_a_photo,
          color: Color(0xff5685d7),
        ),
        label: const Text(
          "",
          style: TextStyle(color: Color(0xff5685d7)),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0, primary: Colors.transparent),
      );

  Widget get _tweetShareWithVideo => ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.video_collection_sharp,
          color: Color(0xff5685d7),
        ),
        label: const Text(
          "",
          style: TextStyle(color: Color(0xff5685d7)),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0, primary: Colors.transparent),
      );

  Widget get _tweetShareWithDocument => ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.file_present_outlined,
          color: Color(0xff5685d7),
        ),
        label: const Text(
          "",
          style: TextStyle(color: Color(0xff5685d7)),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0, primary: Colors.transparent),
      );

  final _titleTextStyle = const TextStyle(
      letterSpacing: 1,
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: Colors.black);
}
