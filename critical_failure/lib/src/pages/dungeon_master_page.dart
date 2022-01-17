// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class DungeonMaster extends StatelessWidget {
  const DungeonMaster({Key? key}) : super(key: key);

  static const String _title = 'Dungeon Master';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: new Center(
            child: new Text(_title, textAlign: TextAlign.center),
          ),
          backgroundColor: Colors.green),
      backgroundColor: Colors.green.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(),
          ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.network(
                    'https://i.pinimg.com/originals/42/36/84/42368427019fcefd4a5c72defe73fb32.jpg'),
              )),
          Divider(),
          Table(
              // ignore: prefer_const_literals_to_create_immutables
              children: <TableRow>[
                TableRow(children: [
                  _monster(),
                  Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fac4b84a-f2ba-4b67-8c2f-130230f54f3a/d8syzr0-46a2394c-463d-4db9-a468-93c0ec710768.png/v1/fill/w_894,h_894,strp/monsters_inc__logo_by_jubaaj_d8syzr0-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcL2ZhYzRiODRhLWYyYmEtNGI2Ny04YzJmLTEzMDIzMGY1NGYzYVwvZDhzeXpyMC00NmEyMzk0Yy00NjNkLTRkYjktYTQ2OC05M2MwZWM3MTA3NjgucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.weB9ytaer5lj1SQDBl0mLhXiw5TwFoCnwWh-QvJhJ30',
                      height: 120),
                  Image.network(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fac4b84a-f2ba-4b67-8c2f-130230f54f3a/d8syzr0-46a2394c-463d-4db9-a468-93c0ec710768.png/v1/fill/w_894,h_894,strp/monsters_inc__logo_by_jubaaj_d8syzr0-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcL2ZhYzRiODRhLWYyYmEtNGI2Ny04YzJmLTEzMDIzMGY1NGYzYVwvZDhzeXpyMC00NmEyMzk0Yy00NjNkLTRkYjktYTQ2OC05M2MwZWM3MTA3NjgucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.weB9ytaer5lj1SQDBl0mLhXiw5TwFoCnwWh-QvJhJ30',
                      height: 120),
                ]),
              ]),
        ],
      ),
    );
  }
}

// class MyStatelessWidget extends StatelessWidget{
//   const MyStatelessWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         const SizedBox(
//           height: 20.0,
//         ),
//         ListTile(
//           leading: Hero(
//             tag: 'hero-rectangle',
//             child: Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fac4b84a-f2ba-4b67-8c2f-130230f54f3a/d8syzr0-46a2394c-463d-4db9-a468-93c0ec710768.png/v1/fill/w_894,h_894,strp/monsters_inc__logo_by_jubaaj_d8syzr0-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcL2ZhYzRiODRhLWYyYmEtNGI2Ny04YzJmLTEzMDIzMGY1NGYzYVwvZDhzeXpyMC00NmEyMzk0Yy00NjNkLTRkYjktYTQ2OC05M2MwZWM3MTA3NjgucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.weB9ytaer5lj1SQDBl0mLhXiw5TwFoCnwWh-QvJhJ30',
//             width:100,
//             height: 60,
//             fit: BoxFit.cover,),
//           ),
//           //onTap: () => _gotoDetailsPage(context),

//         ),
//       ],
//     );
//   }
// }

Widget _monster() {
  return Image.network(
      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fac4b84a-f2ba-4b67-8c2f-130230f54f3a/d8syzr0-46a2394c-463d-4db9-a468-93c0ec710768.png/v1/fill/w_894,h_894,strp/monsters_inc__logo_by_jubaaj_d8syzr0-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcL2ZhYzRiODRhLWYyYmEtNGI2Ny04YzJmLTEzMDIzMGY1NGYzYVwvZDhzeXpyMC00NmEyMzk0Yy00NjNkLTRkYjktYTQ2OC05M2MwZWM3MTA3NjgucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.weB9ytaer5lj1SQDBl0mLhXiw5TwFoCnwWh-QvJhJ30',
      height: 120);
}
