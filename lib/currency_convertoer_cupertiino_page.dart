import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 83;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar:const CupertinoNavigationBar(
        middle: Text(
          "Currency Converter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: CupertinoColors.white,
          ),
        ),
      ),


      child: Center(

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                //color: Colors.black,
                child:  Text(
                  //ternary operator
                  'INR  ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.systemBackground,
                  ),
                ),
              ),

              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.secondaryLabel,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                placeholder: "Please Enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 15),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,

                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


