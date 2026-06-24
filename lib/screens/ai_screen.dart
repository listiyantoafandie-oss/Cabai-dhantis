import 'package:flutter/material.dart';
import '../ai/pest_ai.dart';
import '../ai/yield_ai.dart';
import '../services/weather_service.dart';

class AIScreen extends StatelessWidget {
  const AIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weather = WeatherService.getWeather();

    final pest = PestAI.detect(
      daunKeriting: true,
      bintikHitam: false,
      daunKuning: true,
    );

    final hasil = YieldAI.estimateYield(
      jumlahTanaman: 1000,
      kesehatanTanaman: 0.8,
    );

    return Scaffold(
      appBar: AppBar(title: const Text("AI Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🌦️ Cuaca: ${weather["risk"]}"),
            const SizedBox(height: 10),

            Text("🐛 Hama: $pest"),
            const SizedBox(height: 10),

            Text("🌾 Estimasi Panen: ${hasil.toStringAsFixed(1)} kg"),
          ],
        ),
      ),
    );
  }
}
