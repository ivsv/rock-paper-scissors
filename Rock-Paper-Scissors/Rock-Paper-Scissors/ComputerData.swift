import Foundation

var computerItem: String?

public func getItemForComputer() {
  let random = Float(Float(arc4random()) / Float(UINT32_MAX))
  
  if random < 0.33 {
    computerItem = "Rock"
  } else if random == 0.33 && random < 0.66 {
    computerItem = "Paper"
  } else {
    computerItem = "Scissors"
  }
  
}
