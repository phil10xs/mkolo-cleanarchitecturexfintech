import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assesment/core/assets/assets.dart';
import 'package:mobile_assesment/features/dashboard/presentation/widgets/tranx.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/balanceboard.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? tabIndex = 0;
  var controller = PageController(viewportFraction: 1.0);
  int currentIndex = 0;

  Color manageTabColor(String? tabTitle, int? tabIndex) {
    if (tabTitle!.startsWith('Spend')) {
      if (tabIndex == 0) {
        return Theme.of(context).primaryColor;
      } else {
        return Colors.grey;
      }
    } else {
      if (tabIndex == 0) {
        return Colors.grey;
      } else {
        return Theme.of(context).primaryColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Welcome Lanre! ',
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        const Spacer(),
                        Image.asset(kSupport,
                            scale: 3.4, color: const Color(0xFF263238)),
                        const SizedBox(width: 30),
                        Image.asset(kNotifi,
                            scale: 3.4, color: const Color(0xFF263238)),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Account no: ',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                        Text(
                          '533423243542',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          kCopy,
                          scale: 3.4,
                          color: const Color(0xFF263238),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(children: [
                const SizedBox(height: 20),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 2,
                        right: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            kArrowBackS,
                            scale: 3.4,
                          ),
                          const SizedBox(width: 5),
                          const Expanded(child: BalanceBoard()),
                          const SizedBox(width: 5),
                          Image.asset(
                            kArrowForwardB,
                            scale: 3.4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 2,
                      effect: ScrollingDotsEffect(
                        dotHeight: 6,
                        dotWidth: 6,
                        dotColor: Colors.grey,
                        activeDotColor: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: CupertinoSlidingSegmentedControl<int>(
                          backgroundColor: CupertinoColors.systemGrey6,
                          thumbColor: CupertinoColors.white,
                          groupValue: tabIndex,
                          children: {
                            0: buildSegment("Spending Account"),
                            1: buildSegment("Linked Accounts"),
                          },
                          onValueChanged: (value) {
                            setState(() {
                              tabIndex = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      kTransferMoney,
                                      scale: 3.7,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Transfer Money',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Image.asset(
                                      kFundAccount,
                                      scale: 3.7,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Fund Account',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Spacer(),
                                Column(
                                  children: [
                                    Image.asset(
                                      kBuyAirtime,
                                      scale: 3.7,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Buy Airtime',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Row(
                              children: [
                                const SizedBox(width: 15),
                                Column(
                                  children: [
                                    Image.asset(
                                      kPayBill,
                                      scale: 3.7,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Pay Bills',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Image.asset(
                                      kSaveMoney,
                                      scale: 3.7,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Save Money',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Image.asset(
                                      kPayEarly,
                                      scale: 3.7,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Earlypay',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 5),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Tranx(
                              homeTabIndex: tabIndex,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSegment(String tabTitle) {
    return Container(
      height: 38,
      child: Center(
        child: Text(
          tabTitle,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: manageTabColor(tabTitle, tabIndex),
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
