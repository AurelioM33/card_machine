// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String data = "31993887912";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text(
          "Pix",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 1.0),
                    blurRadius: 6.0,
                  ),
                ],
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              child: Text(
                " Pix",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          Column(
            children: [
              Text(
                'Codigo gerado com o texto: $data',
              ),
              QrImageView(
                padding: const EdgeInsets.all(1),
                data: data,
                version: QrVersions.auto,
                size: 300.0,
                gapless: true,
              ),
              const SizedBox(height: 12),
              LinearPercentIndicator(
                barRadius: const Radius.circular(12),
                alignment: MainAxisAlignment.center,
                width: 300,
                lineHeight: 14.0,
                percent: 0.5,
                backgroundColor: Colors.grey,
                progressColor: Colors.greenAccent,
              ),
              const SizedBox(height: 20),
              const Text(
                "Utilize um aplicativo compativel para fazer a leitura do QrCode!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
