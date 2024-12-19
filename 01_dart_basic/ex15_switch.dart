void main() {
  // int k 가 1이면 카페모카, 2이면 카페라떼, 3이면 아메리카노, 나머지 과일쥬스
  int k = 2;
  switch (k) {
    case 1:
      print("카페모카");
      break;
    case 2:
      print("카페라떼");
      break;
    case 3:
      print("아메리카노");
      break;
    default:
      print("과일쥬스");
  }
}
