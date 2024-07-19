import 'package:flutter/material.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key,});

  //final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              "articleModel.image!",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "articleModel.title",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,/// if you don't have space (text is more  than 2 ) in the end ofb second line put ...
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "articleModel.subTitle ?? ''",
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}

