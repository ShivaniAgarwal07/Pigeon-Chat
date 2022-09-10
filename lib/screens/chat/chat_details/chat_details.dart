import 'package:chat_application/utils/helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.primary,
        title: Row(
          children: <Widget>[
            SizedBox(
              width: 40.w,
              height: 40.w,
              child: CircleAvatar(
                backgroundImage:
                    const NetworkImage('https://i.pravatar.cc/110'),
                backgroundColor: Colors.grey[200],
                minRadius: 30,
              ),
            ),
            SizedBox(width: 10.w),
            const Text(
              'Selina Kyle',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 50.w,
                              height: 20.w,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 180, 181, 184),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: const Center(
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    color: AppColors.whiteTwo,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            const Bubble(
                              message: 'Hi How are you ?',
                              isMe: true,
                            ),
                            const Bubble(
                              message: 'have you seen the docs yet?',
                              isMe: true,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 180, 181, 184),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: const FittedBox(
                                child: Text(
                                  'Feb 25, 2018',
                                  style: TextStyle(
                                    color: AppColors.whiteTwo,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            const Bubble(
                              message: 'i am fine !',
                              isMe: false,
                            ),
                            const Bubble(
                              message: 'yes i\'ve seen the docs',
                              isMe: false,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(-2, 0),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        hintText: 'Enter Message',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Color(0xff3E8DF3),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  final bool isMe;
  final String message;

  const Bubble({Key? key, required this.message, required this.isMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: isMe
          ? const EdgeInsets.only(left: 40)
          : const EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: isMe
                      ? const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 1],
                          colors: [
                            AppColors.primary,
                            AppColors.primaryTwo,
                          ],
                        )
                      : const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 1],
                          colors: [
                            Color(0xFFEBF5FC),
                            Color(0xFFEBF5FC),
                          ],
                        ),
                  borderRadius: isMe
                      ? const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(15),
                        )
                      : const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                        ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message,
                      textAlign: isMe ? TextAlign.end : TextAlign.start,
                      style: TextStyle(
                        color: isMe ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
