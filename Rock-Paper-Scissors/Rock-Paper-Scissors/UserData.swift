import Foundation

var userResponseAboutItem: Int?
var userItem:              String?

public func getItemForUser() {
  userResponseAboutItem = Int(readLine()!)
  
  guard userResponseAboutItem == 1 || userResponseAboutItem == 2 || userResponseAboutItem == 3 else {
    print("Good luck! :)")
    return
  }
  
  switch userResponseAboutItem! {
  case 1:
    userItem = "Rock"
  case 2:
    userItem = "Paper"
  case 3:
    userItem = "Scissors"
  default:
    return
  }
}
