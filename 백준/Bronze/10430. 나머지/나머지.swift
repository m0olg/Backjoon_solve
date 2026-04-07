let i = readLine()!.split(separator: " ").map { Int($0)! }

let A = i[0], B = i[1], C = i[2]

print((A + B) % C)
print(((A % C) + (B % C)) % C)
print((A * B) % C)
print(((A % C) * (B % C)) % C)