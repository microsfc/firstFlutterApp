import 'package:flutter/material.dart';

class AccountingApp extends StatefulWidget {
  @override
  _AccountingAppState createState() => _AccountingAppState();
}

class _AccountingAppState extends State<AccountingApp> {
  double dailyIncome = 0.0;
  double monthlyIncome = 0.0;
  double yearlyIncome = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounting App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Daily Income: \$${dailyIncome.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement logic to add daily income
                        setState(() {
                          dailyIncome += 100.0; // Example increment by $100
                        });
                      },
                      child: Text('Add Daily Income'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Monthly Income: \$${monthlyIncome.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement logic to add monthly income
                        setState(() {
                          monthlyIncome += 1000.0; // Example increment by $1000
                        });
                      },
                      child: Text('Add Monthly Income'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Yearly Income: \$${yearlyIncome.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 18),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement logic to add yearly income
                        setState(() {
                          yearlyIncome += 12000.0; // Example increment by $12000
                        });
                      },
                      child: Text('Add Yearly Income'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}