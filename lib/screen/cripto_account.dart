import 'package:flutter/material.dart';

class CriptAccount extends StatefulWidget {
  const CriptAccount({super.key});

  @override
  State<CriptAccount> createState() => _CriptAccountState();
}

class _CriptAccountState extends State<CriptAccount> {
  final double totalBalance = 68000.0;
  final List<Map<String, dynamic>> cryptoBalances = [
    {'name': 'Bitcoin', 'symbol': 'BTC', 'balance': 1.5},
    {'name': 'Ethereum', 'symbol': 'ETH', 'balance': 10.0},
    {'name': 'Litecoin', 'symbol': 'LTC', 'balance': 50.0},
    {'name': 'Ripple', 'symbol': 'XRP', 'balance': 1500.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cripto Account')),
        shadowColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Balance',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${totalBalance.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Cryptocurrencies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cryptoBalances.length,
                itemBuilder: (context, index) {
                  final crypto = cryptoBalances[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(crypto['symbol']),
                      ),
                      title: Text(crypto['name']),
                      trailing: Text(
                        '${crypto['balance']} ${crypto['symbol']}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
