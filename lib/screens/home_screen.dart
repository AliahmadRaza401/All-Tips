import 'package:altipzz/utils/app_colors.dart';
import 'package:altipzz/utils/app_images.dart';
import 'package:altipzz/widgets/app_custom_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              top: MediaQuery.of(context).size.width * 0.03,
            ),
            child: _appBarWidget1()),
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.03,
                  top: MediaQuery.of(context).size.width * 0.03,
                ),
                child: _appBarWidget2(context)),
          )
        ],
      ),
      body: loading == true
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03,
                  right: MediaQuery.of(context).size.width * 0.03,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    _nameWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    _blueBoxWidget(context),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    // ElevatedButton(
                    //     onPressed: () {

                    //     },
                    //     child: Text('Paypal Method')),
                    // ElevatedButton(
                    //     onPressed: () {

                    //     },
                    //     child: Text('My profile')),
                    // _texfieldWidget(name, 'Serach Here'),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.02,
                    // ),
                    // inform == true
                    //     ? FutureBuilder(
                    //         future: searchByName(),
                    //         builder: (context, AsyncSnapshot snapshot) {
                    //           if (snapshot.hasData) {
                    //             return snapshot.data;
                    //           } else if (snapshot.hasError) {
                    //             return Center(child: Text("${snapshot.error}"));
                    //           } else {
                    //             return const Center(
                    //               child: CircularProgressIndicator(),
                    //             );
                    //           }
                    //         },
                    //       )
                    //     : Container(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _nameTextWidget(
                        'Recent Tips',
                        FontWeight.w700,
                        20.0,
                        0xFF030319,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    recentWidget1(),
                    recentWidget1(),
                    recentWidget1(),
                    recentWidget1(),
                    recentWidget1(),
                    recentWidget1(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _blueBoxWidget(context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.buttonBackGroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _picWidget('arrowIcon.png', 0xFFFFFFFF),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  _nameTextWidget('Tip', FontWeight.w500, 14.0, 0xFFFFFFFF),
                ],
              ),
            ),
            //  VerticalDivider(
            //    indent: 5,
            //    endIndent: 5,
            //   width: 20,
            //   thickness: 20,
            //   color: AppColors.black,
            // ),
            Container(
              height: 40,
              child: VerticalDivider(
                width: 30,
                color: Colors.grey[200],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _picWidget('topup.png', 0xFFFFFFFF),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  _nameTextWidget('Top Up', FontWeight.w500, 14.0, 0xFFFFFFFF),
                ],
              ),
            ),
            Container(
              height: 40,
              child: VerticalDivider(
                width: 30,
                color: Colors.grey[200],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _picWidget('history.png', 0xFFFFFFFF),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                _nameTextWidget('History', FontWeight.w500, 14.0, 0xFFFFFFFF),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget recentWidget1() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(AppImages().women1),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(
                    context,
                    'Starbucks Coffee',
                    19.0,
                    fontFamily: '',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  text(
                    context,
                    'Starbucks Coffee',
                    12.0,
                  ),
                ],
              ),
              Expanded(child: Container()),
              text(
                context,
                '-\$156.00',
                19.0,
                fontFamily: '',
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey[150],
            thickness: 2,
          )
        ],
      ),
    );
  }

  Widget _picWidget(String _image, _color) {
    return ImageIcon(
      AssetImage("assets/images/$_image"),
      size: 30,
      color: Color(_color),
    );
  }

  Widget _appBarWidget1() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.10,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          AppImages().logo,
        ),
        fit: BoxFit.contain,
      )),
    );
  }

  Widget _appBarWidget2(context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightGrey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          color: AppColors.boldTextColor,
        ),
      ),
    );
  }

  Widget _nameWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _nameTextWidget('Hello Andre,', FontWeight.w700, 18.0, 0xFF030319),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            _nameTextWidget(
                'Your available balance', FontWeight.w300, 14.0, 0xFF8F92A1),
          ],
        ),
        _nameTextWidget('\$15,901', FontWeight.w700, 28.0, 0xFF030319),
      ],
    );
  }

  Widget _nameTextWidget(
      String _text, FontWeight _fontWeight, _fontSize, _color) {
    return Text(
      _text,
      style: TextStyle(
        color: Color(_color),
        fontWeight: _fontWeight,
        fontSize: _fontSize,
      ),
    );
  }
}
