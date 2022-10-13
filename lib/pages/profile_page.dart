import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String _profilePicUrl =
        "https://avatars.githubusercontent.com/u/48881290?v=4";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 186, 230),
        title: Text('Profil'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 217, 222, 228),
              size: 35,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Card(
        color: Color(0xff504a78),
        child: ListTile(
          title: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                runSpacing: 10,
                direction: Axis.horizontal,
                children: [
                  Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.center,
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30),
                        child: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 85,
                            backgroundImage: NetworkImage(
                                _profilePicUrl),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  _nameCard(),
                  _useridCard(),
                  _PhoneNoCard(),
                  _DepCard(),
                  edit_Button(),
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

  Card _nameCard() {
    return Card(
      color: Color.fromARGB(255, 120, 186, 230),
      child: ListTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              runSpacing: 10,
              direction: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Text('Ad Soyad :'),
                    Text('   '),
                    Text('UsurName - SurName')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  Card _useridCard() {
    return Card(
      color: Color.fromARGB(255, 120, 186, 230),
      child: ListTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              runSpacing: 10,
              direction: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Text('Kullanıcı Adı :'),
                    Text('   '),
                    Text('UsurName_SurName')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  Card _PhoneNoCard() {
    return Card(
      color: Color.fromARGB(255, 120, 186, 230),
      child: ListTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              runSpacing: 10,
              direction: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Text('Telefon No :'),
                    Text('   '),
                    Text('00000000000000000')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  Card _DepCard() {
    return Card(
      color: Color.fromARGB(255, 120, 186, 230),
      child: ListTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Wrap(
              runSpacing: 10,
              direction: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Text('Departman :'),
                    Text('   '),
                    Text('ceo/cfo/cto/')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

class edit_Button extends StatelessWidget {
  const edit_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.00),
                side: BorderSide(
                  color: Colors.transparent,
                  width: 3,
                ),
              ),
              primary: Color.fromARGB(255, 56, 1, 44),
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal:
                    MediaQuery.of(context).size.width / 7,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Düzenle',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.edit),
              ],
            ),
            onPressed: () {},
          )
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
