import 'package:flutter/material.dart';
import 'package:mobile_assesment/core/assets/assets.dart';

class BalanceBoard extends StatelessWidget {
  const BalanceBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 170,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Avalaible Balance',
                style: Theme.of(context).textTheme.caption!.copyWith(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Container(
                height: 40,
                width: 90,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Tier 1',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  '₦',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              Text(
                '690,390.68 ',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Image.asset(kEye, scale: 3.2, color: Colors.white),
            ],
          ),
          const SizedBox(height: 15),
          Divider(
            color: Colors.white,
          ),
          Row(
            children: [
              Image.asset(
                kPerson,
                scale: 3.2,
              ),
              const SizedBox(width: 10),
              Text(
                'Verify  Your Identity',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                kArrowForward,
                scale: 3.2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
