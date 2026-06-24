class YieldAI {
  static double estimateYield({
    required int jumlahTanaman,
    required double kesehatanTanaman,
  }) {
    return jumlahTanaman * 0.8 * kesehatanTanaman;
  }
}
