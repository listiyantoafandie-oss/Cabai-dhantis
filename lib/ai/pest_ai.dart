class PestAI {
  static String detect({
    required bool daunKeriting,
    required bool bintikHitam,
    required bool daunKuning,
  }) {
    if (daunKeriting && daunKuning) {
      return "TRIPS";
    }
    if (bintikHitam) {
      return "JAMUR";
    }
    if (daunKuning) {
      return "Defisiensi N";
    }
    return "Normal";
  }
}
