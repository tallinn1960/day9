import Foundation
import Aoc2023Day9

let file = CommandLine.arguments[1]
let input = try String(contentsOfFile: file, encoding: .utf8)
var result = day9p1(input: Data(input.utf8))
print("Result part1: \(result)")
result = day9p2(input: Data(input.utf8))
print("Result part2: \(result)")
