import Foundation

print("start test_5")

extension  NSMutableString  {
  func insertAfter(string: String, indexes: [Int]) {
    var stepplus: Int = 3
    for ind in indexes{
        self.insert(string, at: ind + stepplus)
        stepplus += 1
    }
  }
}

extension String {
  func indicesOf(keywords: [String]) -> [Int] {
    var indices = [Int]()
    for string in keywords{
      var searchStartIndex = self.startIndex

      while searchStartIndex < self.endIndex,
      let range = self.range(of: string, range: searchStartIndex..<self.endIndex),
      !range.isEmpty
      {
        let index = distance(from: self.startIndex, to: range.lowerBound)
        indices.append(index)
        searchStartIndex = range.upperBound
      }
    }
    indices.sort()
    return indices
  }
}

let keywords: [String]  = ["sin","cos","log"]
print("String to change:")

let sourcestring  = readLine()!
var indexes = sourcestring.indicesOf(keywords: keywords)

var outstring = NSMutableString(string: sourcestring)
outstring.insertAfter(string: "(", indexes: indexes)
print(outstring) 