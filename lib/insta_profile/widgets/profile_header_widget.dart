import 'package:flutter/material.dart';
import '../../config.dart';
import '../data/data.dart';

Widget profileHeaderWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: currentTheme.isDark ? Colors.black : Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff74EDED),
                backgroundImage:
                    NetworkImage("https://placeimg.com/640/480/people"),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "23",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 0.4,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "1.5M",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            letterSpacing: 0.4,
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "234",
                        style: TextStyle(
                            letterSpacing: 0.4,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            letterSpacing: 0.4,
                            fontSize: 15,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Jenslin",
            style: TextStyle(
              color: currentTheme.isDark ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Lorem Ipsum",
            style: TextStyle(
                letterSpacing: 0.4,
                color: currentTheme.isDark ? Colors.white : Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          actions(context),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 85,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: highlightItems.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  highlightItems[index].thumbnail.toString()),
                              radius: 28,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            highlightItems[index].title.toString(),
                            style: const TextStyle(
                                fontSize: 13, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}

Widget actions(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const Size(0, 30),
              side: BorderSide(
                color: Colors.grey.shade400,
              )),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text("Edit Profile",
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black)),
          ),
        ),
      ),
    ],
  );
}
