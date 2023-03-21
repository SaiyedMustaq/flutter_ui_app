import 'package:flutter/material.dart';

import 'MusicAppColor.dart';

class MusicMain extends StatefulWidget {
  const MusicMain({Key key});

  @override
  State<MusicMain> createState() => _MusicMainState();
}

class _MusicMainState extends State<MusicMain> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MusicAppColor.kWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Discover',
          style: Theme.of(context).textTheme.headlineLarge.copyWith(
              fontWeight: FontWeight.w600, color: MusicAppColor.kPrimaryColor),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.account_circle,
                size: 30.0, color: MusicAppColor.kPrimaryColor),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              height: size.height * 0.72,
              child: Row(
                children: [_buildNavigationRail(), buildPlayListAndArea(size)],
              )),
          _buildCurrentPlaySong(size)
        ],
      ),
    );
  }

  Widget _buildCurrentPlaySong(Size size) {
    return Container(
      height: size.height * 0.110,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        color: Color.fromARGB(110, 23, 121, 162),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://wallpaper.dog/large/17164615.jpg"))),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Song Title",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              Text("Artist",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
            ],
          ),
          Spacer(),
          Icon(Icons.favorite_border),
          SizedBox(width: 20),
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Icon(
                Icons.pause,
                size: 30.0,
              ))
        ],
      ),
    );
  }

  Widget buildSongList(String title, String subTitle, String image) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  image,
                ))),
      ),
    );
  }

  Widget buildPlayListAndArea(Size size) {
    return Column(
      children: [
        Container(
          height: 0.35 * size.height,
          width: size.width * 0.8,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => buildPlayLitsItem(
                "Relax", "https://wallpaper.dog/large/17164615.jpg"),
          ),
        ),
        Container(
            height: 0.35 * size.height,
            width: size.width * 0.8,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) => buildSongList("Title",
                  "Sub Title", "https://wallpaper.dog/large/17164615.jpg"),
            ))
      ],
    );
  }

  Widget buildPlayLitsItem(String title, String image) {
    return Container(
      width: 202,
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Icon(
                Icons.play_arrow,
                color: Colors.black,
                size: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationRail() {
    return NavigationRail(
      minWidth: 58,
      destinations: [
        NavigationRailDestination(
            icon: SizedBox.shrink(),
            label: RotatedBox(
              quarterTurns: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Recent"),
              ),
            )),
        NavigationRailDestination(
            icon: SizedBox.shrink(),
            label: RotatedBox(
              quarterTurns: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Like"),
              ),
            )),
      ],
      onDestinationSelected: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      selectedIndex: _selectedIndex,
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.1,
      unselectedLabelTextStyle: TextStyle(
          color: MusicAppColor.kLightColor1, fontWeight: FontWeight.bold),
      selectedLabelTextStyle: TextStyle(
          color: MusicAppColor.kPrimaryColor, fontWeight: FontWeight.bold),
      leading: Column(
        children: [
          Icon(Icons.playlist_play, color: MusicAppColor.kPrimaryColor),
          SizedBox(height: 5.0),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              "Your Playlist",
              style: TextStyle(
                  color: MusicAppColor.kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
