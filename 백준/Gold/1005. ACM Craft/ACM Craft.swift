let t = Int(readLine()!)!

for _ in 0..<t {
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nk[0], k = nk[1]
    
    let time = [0] + readLine()!.split(separator: " ").map { Int($0)! }
    
    // 그래프
    var graph = Array(repeating: [Int](), count: n + 1)
    var indegree = Array(repeating: 0, count: n + 1)
    
    for _ in 0..<k {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let x = input[0], y = input[1]
        
        graph[x].append(y)   // x 다음에 y
        indegree[y] += 1     // y는 선행 필요
    }
    
    let w = Int(readLine()!)!
    
    // dp[i] = i 건물까지 걸리는 최대 시간
    var dp = Array(repeating: 0, count: n + 1)
    
    // 배열로 대체
    var queue = [Int]()
    
    // 시작점 (먼저 지을 수 있는 건물)
    for i in 1...n {
        if indegree[i] == 0 {
            queue.append(i)
            dp[i] = time[i]
        }
    }
    
    var idx = 0
    while idx < queue.count {
        let now = queue[idx]
        idx += 1
        
        for next in graph[now] {
            indegree[next] -= 1
            
            // 최대 시간 갱신
            dp[next] = max(dp[next], dp[now] + time[next])
            
            if indegree[next] == 0 {
                queue.append(next)
            }
        }
    }
    
    print(dp[w])
}