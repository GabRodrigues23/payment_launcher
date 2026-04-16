import 'package:flutter/material.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/shared/enum/payment_types.dart';
import 'package:payment_launcher/shared/widgets/nav_bar.dart';

class PaymentPage extends StatefulWidget {
  final ThemeService themeService;
  final PaymentTypes paymentType;
  const PaymentPage({
    super.key,
    required this.themeService,
    required this.paymentType,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _referenceIdController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _referenceIdController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(hasBack: true),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            TextField(
              controller: _referenceIdController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text('Reference ID:'),
                labelStyle: TextStyle(fontSize: 18),
                filled: true,
                fillColor: Colors.white,
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),

            DropdownButtonFormField<PaymentTypes>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text('Tipo de Pagamento:'),
                labelStyle: TextStyle(fontSize: 18),
                filled: true,
                fillColor: Colors.white,
              ),
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),

              items: PaymentTypes.values.map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type.description),
                );
              }).toList(),
              onChanged: (value) => {},
            ),

            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                label: Text('Valor:'),
                labelStyle: TextStyle(fontSize: 18),
                filled: true,
                fillColor: Colors.white,
              ),
              maxLines: 1,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),

            SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF180E6D),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  minimumSize: Size.fromHeight(60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Enviar Simulação de Pagamento',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
