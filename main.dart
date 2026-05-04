import 'animal.dart';

void main() {
  List<Goldfisch> goldies = [
    Goldfisch("Goldy", 3, "Goldfisch", 12, 2),
    Goldfisch("Silvy", 4, "Goldfisch", 18, 1),
    Goldfisch("Reddy", 2, "Goldfisch", 16, 2),
    Goldfisch("Bluely", 4, "Goldfisch", 13, 3),
    Goldfisch("Yelly", 3, "Goldfisch", 14, 1),
    Goldfisch("Greeny", 6, "Goldfisch", 11, 2),
    Goldfisch("Blacky", 1, "Goldfisch", 14, 2),
  ];

  for(int i = 0; i < goldies.length; i++) {
    goldies[i].printInformation(); 
  }
}