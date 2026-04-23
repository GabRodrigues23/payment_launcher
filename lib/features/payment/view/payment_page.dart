import 'package:flutter/material.dart';
import 'package:payment_launcher/core/services/theme_service.dart';
import 'package:payment_launcher/features/payment/viewmodel/payment_view_model.dart';
import 'package:payment_launcher/shared/enum/payment_type.dart';
import 'package:payment_launcher/shared/widgets/nav_bar.dart';

class PaymentPage extends StatefulWidget {
  final ThemeService themeService;
  final PaymentViewModel viewModel;
  const PaymentPage({
    super.key,
    required this.themeService,
    required this.viewModel,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _referenceIdController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  PaymentType? _selectedType;
  int? _installments;
  String? _installmentsType;

  bool isLoading = false;

  Future<void> _submit() async {
    if (_selectedType == PaymentType.unknown) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Selecione o Tipo de Pagamento',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          duration: Duration(seconds: 1),
        ),
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      bool isApproved = await widget.viewModel.newTransaction(
        _selectedType!,
        _referenceIdController.text,
        double.tryParse(_amountController.text) ?? 0,
        _installments,
        _installmentsType,
      );

      if (!mounted) return;

      if (isApproved) {
        _showResultDialog(true);
      } else {
        _showResultDialog(false, errorMessage: 'Transação Negada');
      }
    } catch (e) {
      if (!mounted) return;
      _showResultDialog(false, errorMessage: e.toString());
    } finally {
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }

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

            DropdownButtonFormField<PaymentType>(
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

              items: PaymentType.values
                  .where((type) => type != PaymentType.unknown)
                  .map((type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(type.description),
                    );
                  })
                  .toList(),
              onChanged: (value) => setState(() => _selectedType = value),
            ),

            TextField(
              controller: _amountController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF180E6D),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  minimumSize: Size.fromHeight(60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: isLoading ? null : _submit,
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        'Enviar Simulação de Pagamento',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showResultDialog(bool isSuccess, {String? errorMessage}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          content: Padding(
            padding: const EdgeInsetsGeometry.symmetric(vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                Icon(
                  isSuccess ? Icons.check_circle : Icons.cancel,
                  color: isSuccess ? Colors.green : Colors.red,
                  size: 80,
                ),
                Text(
                  isSuccess ? 'Transação Aprovada' : 'Transação Negada',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isSuccess ? Colors.green : Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (!isSuccess && errorMessage != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    errorMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                  ),
                ],
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSuccess ? Colors.green : Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      'OK',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
