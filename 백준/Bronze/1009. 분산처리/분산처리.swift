let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0] % 10
    var b = input[1]
    
    // b -> 4
    if b % 4 == 0 {
        b = 4
    } else {
        b = b % 4
    }
    
    var result = 1
    
    for _ in 0..<b {
        result = (result * a) % 10
    }
    
    if result == 0 {
        print(10)
    } else {
        print(result)
    }
}