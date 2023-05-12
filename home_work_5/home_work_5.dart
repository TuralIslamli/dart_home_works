void main() {
  // Task 1
  List<int> firstList = [1, 2, 3];
  List<int> secondList = [4, 5, 6];
  List<int> newList = secondList.followedBy(firstList).toList();
  // List<int> newList = [...firstList, ...secondList]; or
  newList.sort();
  print(newList);

  // Task 2
  List<int> tempList = [1, 2, 10, 7, 8, 1, 7, 2, 8, 10];
  List<int> unicList = tempList.toSet().toList();
  print(unicList);
  print(secondMax(unicList));
  unicList.sort();
  unicList.sort((a, b) => b.compareTo(a));
  print(unicList);
}

int secondMax(List<int> a) {
  int? m0 = null;
  int? m1;
  for (int i = 0; i < a.length; i++) {
    if (m0 == null) {
      m0 = a[i];
    } else if (m0 < a[i]) {
      m1 = m0;
      m0 = a[i];
    } else if (m1 == null && m0 > a[i]) {
      m1 = a[i];
    } else if (m1! <= a[i] && m0 > a[i]) {
      m1 = a[i];
    }
  }
  return m1!;
}
