import 'package:flutter_instagram_clone/models/post.model.dart';
import 'package:flutter_instagram_clone/models/stories.model.dart';

final List<StoryModel> stories = [
  StoryModel(
    profilePic: 'assets/images/p1.jpg',
    userName: 'john_doe',
    isVerified: false,
  ),
  StoryModel(
    profilePic: 'assets/images/p2.jpg',
    userName: 'james',
    isVerified: false,
  ),
  StoryModel(
    profilePic: 'assets/images/p3.jpg',
    userName: 'mark_rober',
    isVerified: true,
  ),
  StoryModel(
    profilePic: 'assets/images/p4.jpg',
    userName: 'mrbeast',
    isVerified: true,
  ),
];

final List<PostModel> posts = [
  PostModel(
    userName: 'imihirpaldhikar',
    profilePic: 'assets/images/profile.jpg',
    likes: 230,
    comments: 40,
    postUrl: 'assets/images/post1.jpg',
    postDesc: 'A visit to the natures park!!',
    uploadedOn: '12 minutes',
    isVerified: true,
  ),
  PostModel(
    userName: 'john',
    profilePic: 'assets/images/p4.jpg',
    likes: 30,
    comments: 10,
    postUrl: 'assets/images/post2.jpg',
    postDesc: 'Awesomeness!',
    uploadedOn: '27 minutes',
    isVerified: false,
  ),
  PostModel(
    userName: 'mark_rober',
    profilePic: 'assets/images/p3.jpg',
    likes: 230,
    comments: 40,
    postUrl: 'assets/images/post3.jpg',
    postDesc: 'No Comments!!',
    uploadedOn: '45 minutes',
    isVerified: true,
  ),
  PostModel(
    userName: 'mrbeast',
    profilePic: 'assets/images/p4.jpg',
    likes: 23000,
    comments: 400,
    postUrl: 'assets/images/post5.jpg',
    postDesc: '#TeamSeas',
    uploadedOn: '2 minutes',
    isVerified: true,
  ),
];
