let t = Int(readLine()!)!

for _ in 0..<t { // t번 만큼 반복
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = input[0], y1 = input[1], r1 = input[2]
    let x2 = input[3], y2 = input[4], r2 = input[5]
    
    // 두 중심점 사이의 거리의 제곱
    let dSquared = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)
    
    // 두 반지름의 합의 제곱과 제곱 차
    let sumRSquared = (r1 + r2) * (r1 + r2)
    let diffRSquared = (r1 - r2) * (r1 - r2)
    
    // 거리 비교
    if dSquared == 0 && r1 == r2 {
        print(-1) // 완전히 겹칠 때
    } else if dSquared == sumRSquared || dSquared == diffRSquared {
        print(1)  // 외접 또는 내접 (딱 한 점)
    } else if dSquared > diffRSquared && dSquared < sumRSquared {
        print(2)  // 두 점 (사이 공간에 있을 때)
    } else {
        print(0)  // 만나지 않을 때
    }
}