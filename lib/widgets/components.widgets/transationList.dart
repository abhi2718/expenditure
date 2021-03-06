import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/transation.dart';

class TransationList extends StatelessWidget {
  final List<Transation> transations;
  TransationList(this.transations);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:600,
          child:transations.isEmpty?Image.asset(
          'assets/images/coin.jpg',
          fit:BoxFit.fill,
          ):
          ListView.builder(
          itemBuilder: (context, index) {
            return ( Card(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                              child: Text(
                                transations[index].amount.toString(),
                                style: const TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              )),
                              padding: const EdgeInsets.all(20)),
                          Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text( transations[index].title,
                                      style:Theme.of(context).textTheme.labelMedium
                                      ),
                                  Text(DateFormat.yMEd().format(transations[index].date),
                                      style: const TextStyle(color: Colors.grey)),
                                ],
                              )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      width: double.infinity,
                    ),
                  ));
          },
          itemCount: transations.length,
        ),
        )
      ],
    );
  }
}
