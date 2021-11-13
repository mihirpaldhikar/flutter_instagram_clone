import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/constants/constants.dart';
import 'package:flutter_instagram_clone/ui/components/circular_image.component.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/svg/instagram.svg',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/images/more.png'),
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage('assets/images/messenger.png'),
                    width: 25,
                    height: 25,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 0,
                  top: 5,
                  bottom: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Stack(
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.center,
                        children: [
                          Column(
                            children: const [
                              CircularImage(
                                width: 70,
                                height: 70,
                                imageUrl: 'assets/images/profile.jpg',
                                outlineColor: Colors.red,
                                outlineWidth: 2.5,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text('Your Story')
                            ],
                          ),
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: const EdgeInsets.all(4),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              width: 30,
                              height: 30,
                            ),
                            bottom: 24,
                            right: -1,
                          ),
                        ],
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularImage(
                          width: 70,
                          height: 70,
                          imageUrl: stories[index].profilePic,
                          outlineWidth: 2.5,
                          outlineColor: Colors.red,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          stories[index].userName,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 5000,
              child: ListView.builder(
                itemCount: posts.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (builder, index) {
                  return SizedBox(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircularImage(
                                    imageUrl: posts[index].profilePic,
                                    width: 35,
                                    height: 35,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    posts[index].userName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Visibility(
                                    visible: posts[index].isVerified,
                                    child: const Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                              const Icon(Icons.more_vert_outlined)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(posts[index].postUrl),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.favorite_border_outlined,
                                  size: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  'assets/svg/comment.svg',
                                  width: 22,
                                  height: 22,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  'assets/svg/sent.svg',
                                  width: 22,
                                  height: 22,
                                ),
                                Row(
                                  children: [],
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.bookmark_border_outlined,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Text(
                            '${posts[index].likes.toString()} likes, liked'
                            ' by imihirpaldhikar and ${posts[index].likes - 1}'
                            ' others',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 5,
                          ),
                          child: Row(
                            children: [
                              Text(
                                posts[index].userName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                posts[index].postDesc,
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 7,
                          ),
                          child: Text(
                            'View all ${posts[index].comments} Comments',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            top: 7,
                            bottom: 10,
                          ),
                          child: Text(
                            '${posts[index].uploadedOn} ago',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
