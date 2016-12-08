import Foundation

var wonCounter = (userCount: 0, computerCount: 0)

public func addWonPointTo(_ self: String) {
  if self == "Computer" {
    wonCounter.1 += 1
  } else if self == "User" {
    wonCounter.0 += 1
  }
}

public func showWonScore() {
  print("\n~~~~~~~~~~~")
  print("User: \(wonCounter.0)")
  print("Computer: \(wonCounter.1)")
  print("~~~~~~~~~~~\n")
}
