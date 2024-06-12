import 'package:flutter/material.dart';
import 'classe_confeitarias.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Confeitaria? confeitaria =
        ModalRoute.of(context)!.settings.arguments as Confeitaria?;

    return Scaffold(
      appBar: AppBar(
        title: Text(confeitaria?.name ?? 'Detalhes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(confeitaria?.image ?? 'assets/images/default.jpg'),
            SizedBox(height: 20),
            Text(
              confeitaria?.name ?? '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              confeitaria?.details ?? '',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
