import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

List songStatus = <bool>[];

class _DownloadScreenState extends State<DownloadScreen> {
  final songDotStatus = <bool>[];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //playlist
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.cyan.shade50,
                                Colors.cyan.shade300,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset.zero,
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                color: Colors.cyan.shade300,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.cyan.shade700,
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Playlists',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.cyan.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //recents
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.orange.shade50,
                                Colors.orange.shade300,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset.zero,
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                color: Colors.orange.shade500,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.history,
                            color: Colors.orange.shade700,
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Recents',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.orange.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //favourites
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.red.shade50,
                                Colors.red.shade300,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset.zero,
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                color: Colors.red.shade400,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red.shade600,
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Favourites',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.red.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //artists
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Colors.teal.shade50,
                                Colors.teal.shade200,
                                Colors.teal.shade300,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset.zero,
                                blurRadius: 6.0,
                                spreadRadius: 2.0,
                                color: Colors.teal.shade400,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.music_note,
                            color: Colors.teal.shade800,
                            size: 26,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Artists',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.teal.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade100,
                      Colors.grey.shade400,
                      Colors.grey.shade100,
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: height - 287,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  songDotStatus.add(false);
                  songStatus.add(false);
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              songStatus =
                                  songStatus.map<bool>((e) => false).toList();
                              songStatus[index] = !songStatus[index];
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(
                                  Icons.music_note,
                                  color: Colors.white,
                                  size: 44,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kalank',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Arijit Singh (2019)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    songDotStatus[index] =
                                        !songDotStatus[index];
                                  });
                                  if (songDotStatus[index]) {
                                    showModalBottomSheet(
                                      isDismissible: false,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(15),
                                        ),
                                      ),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          child: Stack(
                                            children: [
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20),
                                                    child: Center(
                                                      child: Text(
                                                        'Song Name',
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                right: 20,
                                                top: 20,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      songDotStatus[index] =
                                                          !songDotStatus[index];
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Icon(
                                                    Icons.close,
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
