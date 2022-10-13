import 'package:flutter/material.dart';

class GraphicPage extends StatefulWidget {
  const GraphicPage({super.key});

  @override
  State<GraphicPage> createState() => _GraphicPageState();
}

class _GraphicPageState extends State<GraphicPage> {
  final String _randomPic =
      "https://loremflickr.com/320/240";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Color(0xff504a78),
        child: ListTile(
          title: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  _placeHolder,
                  _listViewCard,
                  _listViewCard,
                  _listViewCard
                ],
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }

  Widget get _placeHolder => Stack(
        children: [
          Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              NetworkImage(_randomPic),
                        ),
                        Text('Username'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              NetworkImage(_randomPic),
                        ),
                        Text('Username'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              NetworkImage(_randomPic),
                        ),
                        Text('Username'),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {
                    debugPrint("tapped");
                  },
                  child: Image.asset(
                      "assets/images/graph.png",
                      fit: BoxFit.fitWidth)),
            ],
          )
        ],
      );

  Widget get _listViewCard => Card(
        color: Color.fromARGB(255, 137, 196, 236),
        child: ListTile(
          trailing: Icon(Icons.trending_up_sharp,
              color: Color.fromARGB(255, 3, 226, 11)),
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
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up_alt),
                        Text('18'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.thumb_down_alt),
                        Text('1'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.remove_red_eye_sharp),
                        Text('32'),
                      ],
                    ),
                  ),
                ],
              )
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

const titleTextStyle = TextStyle(
    letterSpacing: 1,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black);
