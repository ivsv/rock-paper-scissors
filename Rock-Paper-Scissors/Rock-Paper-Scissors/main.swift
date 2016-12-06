import Foundation

/*
 * Игра
 * Необходимо реализовать игру «Камень-ножница-бумага».
 * Нужно дать пользователю сыграть против компьютера.
 * Камень побеждает ножницы, ножницы побеждают бумагу, а бумага побеждает камень.
 */

print("Welcome to game 'Rock-Paper-Scissors!'")

func playRockPaperScissors() -> Any? {
  print("***********************")
  print("\nChoose your item for fight! [type a number of choice..]")
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

  let random = Float(arc4random() / UINT32_MAX)
  var computerItem: String?

  if random < 0.33 {
    computerItem = "Rock"
  } else if random == 0.33 && random < 0.66 {
    computerItem = "Paper"
  } else {
    computerItem = "Scissors"
  }

  print("\nUser's choice: \(userItem!)\n")
  print("FIGHT!")
  print("\(userItem!) VS \(computerItem!)")
  print("\n")

  let messageAboutStandoff    = "STANDOFF!\n"
  let messageAboutComputerWin = "COMPUTER WIN!\n"
  let messageAboutUserWin     = "YOU WIN!\n"
  var isUserWin:     Bool?
  var isComputerWin: Bool?

  if userItem == computerItem {
    print("\(messageAboutStandoff)\n")
    print("We need to win computer!")
    isUserWin     = false
    isComputerWin = false
  }

  if userItem == "Rock" {
    if computerItem == "Paper" {
      print(messageAboutComputerWin)
      isUserWin     = false
      isComputerWin = true

    } else if computerItem == "Scissors" {
      print(messageAboutUserWin)
      isUserWin     = false
      isComputerWin = true
    }
  }

  if userItem == "Paper" {
    if computerItem == "Rock" {
      print(messageAboutUserWin)
      isUserWin     = true
      isComputerWin = false
    } else if computerItem == "Scissors" {
      print(messageAboutComputerWin)
      isUserWin     = false
      isComputerWin = true
    }
  }

  if userItem == "Scissors" {
    if computerItem == "Rock" {
      print(messageAboutComputerWin)
      isUserWin     = false
      isComputerWin = true
    } else if computerItem == "Paper" {
      print(messageAboutUserWin)
      isUserWin     = true
      isComputerWin = false
    }
  }

  let userResponceAboutContinueToPlay: String?

  if isUserWin == isComputerWin {
      playRockPaperScissors()
      return nil
  }

  print("\nOne more else?")
  print("\ny: Yes;")
  print("n: No;\n")
  userResponceAboutContinueToPlay = readLine()

  if userResponceAboutContinueToPlay == "y" {
    playRockPaperScissors()
  } else if userResponceAboutContinueToPlay == "n" {
    print("Good luck! :)")
    return nil
  }
print("\n***********************\n")
  return nil
}

playRockPaperScissors()
