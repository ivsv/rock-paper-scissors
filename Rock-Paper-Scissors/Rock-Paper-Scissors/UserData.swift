import Foundation

var userResponseAboutItem: Int?
var userItem:              String?

public func getItemForUser() {
  repeat {
    print("***********************")
    print("\nChoose your item for fight! [type a number of choice..]")
    print("1: Rock")
    print("2: Paper")
    print("3: Scissors\n")
    
    userResponseAboutItem = Int(readLine()!)
    
    if userResponseAboutItem! >= 1 && userResponseAboutItem! <= 3 {
      continue
    } else {
      print("Type the correct number..")
    }
    
  } while !(userResponseAboutItem == 1 || userResponseAboutItem == 2 || userResponseAboutItem == 3)
  
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
