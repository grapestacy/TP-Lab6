print("start test_3")

print("x:")
var x = Double(readLine()!)

print("y:")
var y = Double(readLine()!)

if let xch = x, let ych = y {
  print("A (x, y) = (\(xch), \(ych))")

  if ych * ych + (xch - 1) * (xch - 1) <= 1 {
    print("Is contained")
  }
  else{
    print("Out of figure")
  }
}
else{
  print("Error reading values!")
}