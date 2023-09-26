import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/listData.dart';
import '../../../../core/utils/styles.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

import 'custom_personal_performance.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  Icon customIcon = const Icon(
    Icons.search,
    color: Colors.white,
  );

  final _controller = TextEditingController();
  final duplicateItems = ListData.cardsData;
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    items = duplicateItems;
    super.initState();
  }

  void filterSearchResults(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = duplicateItems;
    } else {
      results = duplicateItems
          .where((user) =>
              user["name"][0].toLowerCase() == enteredKeyword[0].toLowerCase())
          .toList();
    }

    setState(() {
      items = results;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          height: MediaQuery.of(context).size.height * .15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(45),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), //
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sawarny',
                style: Styles.titleLogin.copyWith(fontSize: 30),
              ),
              AnimSearchBar(
                  autoFocus: true,
                  closeSearchOnSuffixTap: true,
                  color: kColorAppBar,
                  searchIconColor: Colors.white,
                  width: MediaQuery.of(context).size.width * .6,
                  textController: _controller,
                  rtl: true,
                  onSuffixTap: () {
                    setState(() {
                      _controller.clear();
                    });
                  },
                  onSubmitted: (value) {
                    filterSearchResults(value);
                  }

                  ),
            ],
          ),
        ),
        //CustomHomeTitle(),
       const SizedBox(
          height: 2,
        ),
        //  CustomListViewItems(),
        Expanded(
          child: items.isNotEmpty
              ? ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final suggestion = items[index]['name'];
                    final img = items[index]['images'][index];
                    return CustomPersonalPerformance(
                        index: index, title: suggestion, personalPic: img,);
                  },
                )
              : const Center(
                child:  Text(
                    'No results found',
                    style: TextStyle(fontSize: 24),
                  ),
              ),
        ),
      ],
    );
  }
}
