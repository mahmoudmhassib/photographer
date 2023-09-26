import 'package:flutter/material.dart';
import 'package:photographer/core/utils/assets.dart';

class CustomImageScroll extends StatefulWidget {
  const CustomImageScroll({super.key});

  @override
  State<CustomImageScroll> createState() => _CustomImageScrollState();
}

class _CustomImageScrollState extends State<CustomImageScroll> {
  List img = [AssetsData.loginLogo, AssetsData.logo];
  int index = 0;
  final PageController _controller = PageController();

  increase() {
    setState(() {
      index++;
    });
  }

  decrease() {
    setState(() {
        index--;
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        //TODO:size of  a pic
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .3,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            ListView.builder(
              padding:const EdgeInsets.only(left: 1,right: 4),
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: AssetsData.portfolio.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  AssetsData.portfolio[index],
                  width: MediaQuery.of(context).size.width *.9,
                  fit: BoxFit.fill,
                );
              },
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCircleAvatarButton(() {
                    decrease();
                    _controller.previousPage(duration:const Duration(milliseconds: 200), curve: Curves.linear);
                  }, Icons.arrow_back_ios_outlined),
                  buildCircleAvatarButton(() {
                    increase();
                    _controller.nextPage(duration:const Duration(milliseconds: 200), curve: Curves.linear);
                  }, Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatarButton(Function() onChange, IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.white38,
      child: IconButton(
        icon: Icon(icon,color: Colors.white,),
        onPressed: onChange,
      ),
    );
  }
}
