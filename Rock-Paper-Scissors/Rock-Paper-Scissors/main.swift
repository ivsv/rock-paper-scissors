import Foundation

/*
 * Игра
 * Необходимо реализовать игру «Камень-ножница-бумага».
 * Нужно дать пользователю сыграть против компьютера.
 * Камень побеждает ножницы, ножницы побеждают бумагу, а бумага побеждает камень.
 */

func rockPaperScissors() -> Any? {
  print("Welcome to game 'Rock-Paper-Scissors!'\n")
  //print("Do u want to play an one part?")
  //print("Press 'y' to play or 'n' to cancel")
  //print("***")
  
  //let userResponceAboutGame = readLine()
  
  print("Choose your item for fight!")
  print("1: Rock")
  print("2: Paper")
  print("3: Scissors\n")
  
  let userResponseAboutItem = Int(readLine()!)
  var userItem: String?
  
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
  
  let random = Float(Float(arc4random()) / Float(UInt32.max))
  print(random)
  var computerItem: String?
  
  if random < 0.33 {
    computerItem = "Rock"
  } else if random == 0.33 && random < 0.66 {
    computerItem = "Paper"
  } else {
    computerItem = "Scissors"
  }
  
  print("User's choice: \(userItem!)\n")
  print("FIGHT!")
  print("\(userItem!) VS ...")
  print("\(userItem!) VS \(computerItem!)")
  
  if userItem == computerItem {
    print("Standoff!")
  }
  
  if userItem == "Rock" {
    if computerItem == "Paper" {
      print("Computer win!")
    } else if computerItem == "Scissors" {
      print("You win!")
    }
  }
  
  if userItem == "Paper" {
    if computerItem == "Rock" {
      print("You win!")
    } else if computerItem == "Scissors" {
      print("Computer win!")
    }
  }
  
  if userItem == "Scissors" {
    if computerItem == "Rock" {
      print("Computer win!")
    } else if computerItem == "Paper" {
      print("You win!")
    }
  }
  
  return nil
}

rockPaperScissors()
