void main() {
  /// Simple binary search over array of ints; Requires the array to be sorted
  /// For a more robust version with generics, see 'dart:collection/algorithms.dart'  
  int binarySearch(List<int> a, int value) {
    var lowerBound = 0;
    var upperBound = a.length;
    
    while (lowerBound < upperBound) {
      final int midIndex = lowerBound + (upperBound - lowerBound) ~/ 2; 
     
      if (a[midIndex] == value) {
        return midIndex;
      }
      else if (a[midIndex] < value) {
        lowerBound = midIndex + 1;
      }
      else {
        upperBound = midIndex;
			}
    }  
    
    return null;
  }
  
  final numArray = [0, 1, 2, 4, 5, 6, 10, 12, 13, 14, 18];
  final numToFind = 5; // "Value found at index: 4"
  print("Value found at index: ${binarySearch(numArray, numToFind)}");
}