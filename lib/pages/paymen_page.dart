import 'package:delivery_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import '../pages/delivery_progress.dart';

class PaymenPage extends StatefulWidget{
  const PaymenPage({super.key});

  @override
  State<PaymenPage> createState() => _PaymenPageState();

}

class _PaymenPageState extends State<PaymenPage>{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate= '';
  String cardHolderName= '';
  String cvvCode= '';
  bool isCvvFocussed = false;

  //user wants to pey
  void userTappedPay(){
    if (formKey.currentState!.validate()){
      //only show dialog if form is valid
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text("confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("card number: $cardNumber"),
                Text("Expire Date: $expiryDate"),
                Text("Card Holdre name: $cardHolderName"),
                Text("Cvv: $cvvCode"),
              ],
            ),
          ),
          actions: [
            //cancel button
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Cancel"),
            ),

            //yes buton
            TextButton(
              onPressed: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DeliveryProgressPage(),
                )
              ), 
              child: const Text("Yes"),
            ),
          ],
        )
      );
    }
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Checkout"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              //credit card
              CreditCardWidget(
                cardNumber: cardNumber, 
                expiryDate: expiryDate, 
                cardHolderName: cardHolderName, 
                cvvCode: cvvCode, 
                showBackView: isCvvFocussed, 
                onCreditCardWidgetChange: (p0) {},
                height: 180, 
                width: MediaQuery.of(context).size.width
              ),
          
              //credit card form
              CreditCardForm(
                cardNumber: cardNumber, 
                expiryDate: expiryDate, 
                cardHolderName: cardHolderName, 
                cvvCode: cvvCode, 
                onCreditCardModelChange: (data){
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                }, 
                formKey: formKey,
              ),

              MyButton(
                text: "pay now", 
                onTap: userTappedPay,
              ),

              const SizedBox(height: 25,),
          
            ],
          ),
        
      ),
    );
  }
}