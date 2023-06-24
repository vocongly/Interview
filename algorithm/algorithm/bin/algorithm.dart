
void main(List<String> arguments) {
  List<int> arrs = [1,3,5,7,9];
  miniMaxSumOption1(arrs);
  miniMaxSumOption2(arrs);
}

void miniMaxSumOption1(List<int> arrs) {
  int max = arrs[0];
  int min = arrs[0];
  int totalSum = 0;

  for (int i = 0; i < arrs.length; i++) {
    totalSum += arrs[i];
    if (arrs[i] < min) min = arrs[i];
    if (arrs[i] > max) max = arrs[i];
  }
  var totalMinSum = totalSum - max;
  var totalMaxSum = totalSum - min;
  print("Option 1: $totalMinSum $totalMaxSum");
}

void miniMaxSumOption2(List<int> arrs) {
  arrs.sort();

  int totalMinSum = 0, totalMaxSum = 0;

  for (int i = 0; i < arrs.length - 1; i++) {
    totalMinSum += arrs[i];
  }
  for (int i = 1; i < arrs.length; i++) {
    totalMaxSum += arrs[i];
  }

  print("Option 2: $totalMinSum $totalMaxSum");
}