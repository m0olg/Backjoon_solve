let a = Int(readLine()!)!
let b = readLine()!.map { Int(String($0))! }

print(a * b[2])
print(a * b[1])
print(a * b[0])
print(a * (b[0]*100 + b[1]*10 + b[2]))