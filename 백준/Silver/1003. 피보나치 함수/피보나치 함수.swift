let t = Int(readLine()!)!  // 테스트 케이스 개수 입력

for _ in 0..<t {
    let n = Int(readLine()!)!  // 구할 피보나치 숫자 n
    
    if n == 0 {
        print("1 0")
        continue
    }
    
    // fib(1)은 1을 출력 → 0이 0번, 1이 1번 출력됨
    if n == 1 {
        print("0 1")
        continue
    }
    
    var zero = [1, 0]  // fib(0)=1번, fib(1)=0번
    var one  = [0, 1]  // fib(0)=0번, fib(1)=1번
    
    // 피보나치 규칙 그대로 사용
    // 출력 횟수도 똑같이 더해짐
    for i in 2...n {
        zero.append(zero[i-1] + zero[i-2])
        one.append(one[i-1] + one[i-2])
    }
    print("\(zero[n]) \(one[n])")
}