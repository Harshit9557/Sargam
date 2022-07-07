import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OnlineSongs extends StatefulWidget {
  const OnlineSongs({Key? key}) : super(key: key);

  @override
  State<OnlineSongs> createState() => _OnlineSongsState();
}

List recentlyPlayedStatus = <bool>[];
List recommendedStatus = <bool>[];
List top50Status = <bool>[];
List romanticStatus = <bool>[];
List englishStatus = <bool>[];

class _OnlineSongsState extends State<OnlineSongs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("Songs").snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text(
                snapshot.error.toString(),
              );
            }
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //options
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
                                    Icons.music_note,
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
                          //radio
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
                                    Icons.radio,
                                    color: Colors.orange.shade700,
                                    size: 26,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Radio',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.orange.shade700,
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
                                        Colors.grey.shade50,
                                        Colors.grey.shade300,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset.zero,
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        color: Colors.grey.shade400,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.mic_external_on,
                                    color: Colors.grey.shade600,
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
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //videos
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
                                    Icons.slow_motion_video_sharp,
                                    color: Colors.red.shade600,
                                    size: 26,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Videos',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.red.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //pro
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
                                    Icons.diamond,
                                    color: Colors.teal.shade800,
                                    size: 26,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pro',
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
                    //divider
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //recently played
                          Row(
                            children: [
                              Text(
                                'Recently Played',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                child: Row(
                                  children: [
                                    Text(
                                      'View all',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.pink.shade300,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                      color: Colors.pink.shade300,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 20),
                            child: SizedBox(
                              height: 149,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  recentlyPlayedStatus.add(false);
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        recentlyPlayedStatus =
                                            recentlyPlayedStatus
                                                .map<bool>((e) => false)
                                                .toList();
                                        recommendedStatus = recommendedStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        top50Status = top50Status
                                            .map<bool>((e) => false)
                                            .toList();
                                        romanticStatus = romanticStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        englishStatus = englishStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        recentlyPlayedStatus[index] =
                                            !recentlyPlayedStatus[index];
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Kalank',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 15,
                                ),
                              ),
                            ),
                          ),
                          //recommended
                          Row(
                            children: [
                              Text(
                                'Recommended',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                child: Row(
                                  children: [
                                    Text(
                                      'View all',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.pink.shade300,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                      color: Colors.pink.shade300,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 20),
                            child: StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection("Songs")
                                  .orderBy('listen_count', descending: true)
                                  .snapshots(),
                              builder: (context, snapshot1) {
                                if (snapshot1.hasData) {
                                  return SizedBox(
                                    height: 149,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        final songs =
                                            snapshot1.data!.docs[index];
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              recentlyPlayedStatus =
                                                  recentlyPlayedStatus
                                                      .map<bool>((e) => false)
                                                      .toList();
                                              recommendedStatus =
                                                  recommendedStatus
                                                      .map<bool>((e) => false)
                                                      .toList();
                                              top50Status = top50Status
                                                  .map<bool>((e) => false)
                                                  .toList();
                                              romanticStatus = romanticStatus
                                                  .map<bool>((e) => false)
                                                  .toList();
                                              englishStatus = englishStatus
                                                  .map<bool>((e) => false)
                                                  .toList();
                                              recommendedStatus[index] =
                                                  !recommendedStatus[index];
                                            });
                                            //FirebaseFirestore.instance.collection('Songs').where('listen_count == ').update(listen_count = listen_count++)
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 120,
                                                width: 120,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.grey.shade300,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                songs['song_name'],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        width: 15,
                                      ),
                                    ),
                                  );
                                }
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            ),
                          ),
                          //top 50 songs
                          Row(
                            children: [
                              Text(
                                'Top 50',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                child: Row(
                                  children: [
                                    Text(
                                      'View all',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.pink.shade300,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                      color: Colors.pink.shade300,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 20),
                            child: SizedBox(
                              height: 149,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        recentlyPlayedStatus =
                                            recentlyPlayedStatus
                                                .map<bool>((e) => false)
                                                .toList();
                                        recommendedStatus = recommendedStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        top50Status = top50Status
                                            .map<bool>((e) => false)
                                            .toList();
                                        romanticStatus = romanticStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        englishStatus = englishStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        top50Status[index] =
                                            !top50Status[index];
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Namo Namo',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 15,
                                ),
                              ),
                            ),
                          ),
                          //romantic
                          Row(
                            children: [
                              Text(
                                'Romantic',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                child: Row(
                                  children: [
                                    Text(
                                      'View all',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.pink.shade300,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                      color: Colors.pink.shade300,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 20),
                            child: SizedBox(
                              height: 149,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        recentlyPlayedStatus =
                                            recentlyPlayedStatus
                                                .map<bool>((e) => false)
                                                .toList();
                                        recommendedStatus = recommendedStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        top50Status = top50Status
                                            .map<bool>((e) => false)
                                            .toList();
                                        romanticStatus = romanticStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        englishStatus = englishStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        romanticStatus[index] =
                                            !romanticStatus[index];
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Zara Zara',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 15,
                                ),
                              ),
                            ),
                          ),
                          //english
                          Row(
                            children: [
                              Text(
                                'English',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                child: Row(
                                  children: [
                                    Text(
                                      'View all',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.pink.shade300,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 15,
                                      color: Colors.pink.shade300,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 20),
                            child: SizedBox(
                              height: 149,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        recentlyPlayedStatus =
                                            recentlyPlayedStatus
                                                .map<bool>((e) => false)
                                                .toList();
                                        recommendedStatus = recommendedStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        top50Status = top50Status
                                            .map<bool>((e) => false)
                                            .toList();
                                        romanticStatus = romanticStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        englishStatus = englishStatus
                                            .map<bool>((e) => false)
                                            .toList();
                                        englishStatus[index] =
                                            !englishStatus[index];
                                      });
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Love Story',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
