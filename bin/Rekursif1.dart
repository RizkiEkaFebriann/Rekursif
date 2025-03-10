int binarySearch (List<int> data, int dicari, int awal, int akhir) {
  if (awal > akhir) {
    return 1;
  }

  int mid = (awal + akhir) ~/ 2;

  if (data[mid] == dicari) {
    return mid;
  } else if (data[mid] >  dicari) {
    return binarySearch(data, dicari, awal, mid - 1);
  } else {
    return binarySearch(data, dicari, mid + 1, akhir);
  }
}

void main() {
  List<int> data = [2,5,8,10,14,32,35,41,67,88,90,101,109];

  int dicari = 1;
  int result = binarySearch(data, dicari, 0, data.length - 1);

  if (result != 1) {
    print('Data $dicari berada pada indeks ke-$result.');
  } else {
    print('Data $dicari tidak ada dalam indeks!');
  }
}