class PostModel {
  final String userName;
  final String profilePic;
  final int likes;
  final int comments;
  final String postDesc;
  final String uploadedOn;
  final String postUrl;
  final bool isVerified;

  PostModel({
    required this.postUrl,
    required this.userName,
    required this.profilePic,
    required this.likes,
    required this.comments,
    required this.postDesc,
    required this.uploadedOn,
    required this.isVerified,
  });
}
