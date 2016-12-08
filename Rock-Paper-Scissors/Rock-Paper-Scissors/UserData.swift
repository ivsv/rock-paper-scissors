import Foundation

public func getItemForUser() -> Int? {
  userResponseAboutItem = Int(readLine()!)
  
  if userResponseAboutItem == nil {
    print("Good luck! :)")
    return nil
  }
  
  switch userResponseAboutItem! {
  case 1:
    userItem = "Rock"
  case 2:
    userItem = "Paper"
  case 3:
    userItem = "Scissors"
  default:
    return nil
  }
  
  return nil
}
