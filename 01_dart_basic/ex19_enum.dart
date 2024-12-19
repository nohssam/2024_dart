enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

void main() {
  Status msg = Status.approved;
  if (msg == Status.approved) {
    print("승인 합니다");
  } else if (msg == Status.pending) {
    print("대기 합니다");
  } else if (msg == Status.rejected) {
    print("거절 합니다");
  } else {
    print("예외처리 합니다");
  }
}
