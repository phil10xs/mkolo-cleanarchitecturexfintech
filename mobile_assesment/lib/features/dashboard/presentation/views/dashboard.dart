// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobile_assesment/config/routes/route.dart';
import 'package:mobile_assesment/config/routes/route_config.dart';
import 'package:mobile_assesment/core/assets/assets.dart';
import 'package:mobile_assesment/features/dashboard/presentation/views/home.dart';
import 'package:provider/provider.dart';

import '../notifier/data.dart';

class DashBoardScreen extends StatefulWidget {
  static const route = "/dashboard";
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _screens = [
      const HomeScreen(),
      const Center(child: Text('Mbolo')),
      const SizedBox(),
      const Center(child: Text('Early Pay')),
      const Center(child: Text('Menu'))
    ];

    return Consumer<MyNotifier>(builder: (context, value, child) {
      final _list = [
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kHomely),
                color: value.current == 0
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Home',
                style: TextStyle(
                  color: value.current == 0
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kMbolo),
                color: value.current == 1
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Mkolo',
                style: TextStyle(
                  color: value.current == 1
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      kSendMoney,
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Transfer Money',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kEarlyPay),
                color: value.current == 3
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Early Pay',
                style: TextStyle(
                  color: value.current == 3
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ImageIcon(
                const AssetImage(kMenu),
                color: value.current == 4
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
              const SizedBox(height: 3),
              Text(
                'Menu',
                style: TextStyle(
                  color: value.current == 4
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ];

      return Scaffold(
        body: _screens[value.current],
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          height: 95,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var i = 0; i < _list.length; i++)
                    GestureDetector(
                      onTap: () {
                        if (i == 2) {
                          // Application.router.navigateTo(
                          //   context,
                          //   Routes.sendmoney,
                          // );
                        }
                        value.current = i;
                        currentIndex = i;
                      },
                      child: _list[i],
                    ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
