import 'package:flutter/material.dart';
import 'package:mobile_assesment/core/assets/assets.dart';
import 'package:provider/provider.dart';

import '../notifier/data.dart';

class Tranx extends StatefulWidget {
  const Tranx({Key? key, this.homeTabIndex}) : super(key: key);

  final int? homeTabIndex;

  @override
  State<Tranx> createState() => _TranxState();
}

class _TranxState extends State<Tranx> {
  String imageString(String? paymentType) {
    if (paymentType == 'debit') {
      return kDebit;
    } else if (paymentType == 'credit') {
      return kCredit;
    }
    return kNetflix;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.homeTabIndex == 0) {
      return EmptyTranxState();
    }

    return Consumer<MyNotifier>(
      builder: (context, store, child) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Recent Transactions',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 75,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'More',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Column(children: [
                      for (var transx in store.data) ...[
                        Column(
                          children: [
                            ListTile(
                              title: Text(
                                transx['descr'],
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                              ),
                              subtitle: Text(
                                transx['client'],
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                              ),
                              trailing: Column(children: [
                                Text(transx['date']),
                                Text("₦${transx['amount']}"),
                              ]),
                              visualDensity: const VisualDensity(
                                  horizontal: 3, vertical: -2),
                              contentPadding: const EdgeInsets.only(
                                top: 0,
                                bottom: 0,
                              ),
                              leading: Image.asset(imageString(transx['type'])),
                            ),
                            const SizedBox(height: 10),
                          ],
                        )
                      ]
                    ]),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget EmptyTranxState() {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Recent Transactions',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 75,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'More',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              'No Recent Transactions',
              style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
