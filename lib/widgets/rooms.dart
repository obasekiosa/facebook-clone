import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class Rooms extends StatelessWidget {
  final List<User> users;

  const Rooms({Key key, @required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + users.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButton(),
            );
          }
          final User user = users[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.white,
      onPressed: () => print('Create Room'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.blueAccent[100],
      ),
      child: Row(
        children: [
          Icon(
            Icons.video_call,
            size: 35.0,
            color: Colors.white,
          ),
//          ShaderMask(
//            shaderCallback: (rect) => Palette.createRoomGradient.createShader(rect),
//            child: Icon(
//              Icons.video_call,
//              size: 35.0,
//              color: Colors.white,
//            ),
//          ),
          const SizedBox(width: 4.0,),
          Text('Create\nRoom', style: TextStyle(
            color: Palette.facebookBlue.withOpacity(0.8),
          ),),
        ],
      ),
    );
  }
}
