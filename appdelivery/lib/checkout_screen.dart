import 'package:appdelivery/home_screen.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

final double subtotal = 54.80;
final double taxaEntrega = 6.99;
final double desconto = 5.00;

double get total => subtotal + taxaEntrega - desconto;

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Checkout')),
        backgroundColor: Colors.orangeAccent,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 135,
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined, size: 30),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Endereço de entrega',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text("Rua vinho 123", style: TextStyle(fontSize: 16)),

                      SizedBox(height: 10),

                      Text("São Roque - SP", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.credit_card, size: 30),

                  SizedBox(width: 10),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forma de pagamento',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text('Cartão de crédito', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Resumo do pedido',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Combo Burger Especial',
                        style: TextStyle(fontSize: 16),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Batata Frita Média',
                        style: TextStyle(fontSize: 16),
                      ),

                      SizedBox(height: 10),

                      Text('Refrigerante Lata', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: 170,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Resumo de valores",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal', style: TextStyle(fontSize: 16)),
                      Text(
                        'R\$ ${subtotal.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Desconto', style: TextStyle(fontSize: 16)),
                      Text(
                        '- R\$ ${desconto.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'R\$ ${total.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Confirmar Pedido',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
