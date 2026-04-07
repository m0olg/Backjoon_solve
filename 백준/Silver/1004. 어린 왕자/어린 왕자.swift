let t = Int(readLine()!)!

for _ in 0..<t {
    let pos = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = pos[0], y1 = pos[1], x2 = pos[2], y2 = pos[3]
    
    let n = Int(readLine()!)!
    var count = 0
    
    for _ in 0..<n {
        let c = readLine()!.split(separator: " ").map { Int($0)! }
        let cx = c[0], cy = c[1], r = c[2]
        
        // 거리 제곱으로 비교
        let d1 = (x1 - cx)*(x1 - cx) + (y1 - cy)*(y1 - cy)
        let d2 = (x2 - cx)*(x2 - cx) + (y2 - cy)*(y2 - cy)
        let r2 = r * r
        
        // 한 점만 원 안에 있을 때만 카운트
        if (d1 < r2 && d2 > r2) || (d1 > r2 && d2 < r2) {
            count += 1
        }
    }
    
    print(count)
}